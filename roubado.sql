select
  T.name as Nome,
  C.name as Coluna,
  TY.name as Tipo,
  C.max_length as 'Tamanho M�ximo',
  C.precision as 'Precis�o',
  C.scale as 'Escala'
from sys.columns C
inner join sys.tables T
	on T.object_id = C.object_id
inner join sys.types TY
  on TY.user_type_id = C.user_type_id