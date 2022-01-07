
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;




 int assert (int ) ;

int
dwarf_get_INL_name(unsigned inl, const char **s)
{

 assert(s != ((void*)0));

 switch (inl) {
 case 128:
  *s = "DW_INL_not_inlined"; break;
 case 129:
  *s = "DW_INL_inlined"; break;
 case 130:
  *s = "DW_INL_declared_not_inlined"; break;
 case 131:
  *s = "DW_INL_declared_inlined"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
