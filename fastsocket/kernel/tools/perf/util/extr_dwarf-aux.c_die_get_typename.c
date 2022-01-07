
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;


 int DW_TAG_array_type ;
 int DW_TAG_enumeration_type ;
 int DW_TAG_pointer_type ;
 int DW_TAG_structure_type ;
 int DW_TAG_subroutine_type ;
 int DW_TAG_union_type ;
 int E2BIG ;
 int ENOENT ;
 int * __die_get_real_type (int *,int *) ;
 int dwarf_diename (int *) ;
 int dwarf_tag (int *) ;
 int snprintf (char*,int,char*,...) ;

int die_get_typename(Dwarf_Die *vr_die, char *buf, int len)
{
 Dwarf_Die type;
 int tag, ret, ret2;
 const char *tmp = "";

 if (__die_get_real_type(vr_die, &type) == ((void*)0))
  return -ENOENT;

 tag = dwarf_tag(&type);
 if (tag == DW_TAG_array_type || tag == DW_TAG_pointer_type)
  tmp = "*";
 else if (tag == DW_TAG_subroutine_type) {

  ret = snprintf(buf, len, "(function_type)");
  return (ret >= len) ? -E2BIG : ret;
 } else {
  if (!dwarf_diename(&type))
   return -ENOENT;
  if (tag == DW_TAG_union_type)
   tmp = "union ";
  else if (tag == DW_TAG_structure_type)
   tmp = "struct ";
  else if (tag == DW_TAG_enumeration_type)
   tmp = "enum ";

  ret = snprintf(buf, len, "%s%s", tmp, dwarf_diename(&type));
  return (ret >= len) ? -E2BIG : ret;
 }
 ret = die_get_typename(&type, buf, len);
 if (ret > 0) {
  ret2 = snprintf(buf + ret, len - ret, "%s", tmp);
  ret = (ret2 >= len - ret) ? -E2BIG : ret2 + ret;
 }
 return ret;
}
