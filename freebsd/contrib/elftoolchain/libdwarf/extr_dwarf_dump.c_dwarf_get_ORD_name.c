
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;


 int assert (int ) ;

int
dwarf_get_ORD_name(unsigned ord, const char **s)
{

 assert(s != ((void*)0));

 switch (ord) {
 case 128:
  *s = "DW_ORD_row_major"; break;
 case 129:
  *s = "DW_ORD_col_major"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
