
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Off ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int Dwarf_Debug ;
typedef int Dwarf_Attribute ;


 int DW_AT_name ;
 int DW_AT_specification ;
 scalar_t__ DW_DLV_OK ;
 scalar_t__ dwarf_attr (int ,int ,int *,int *) ;
 scalar_t__ dwarf_attrval_string (int ,int ,char const**,int *) ;
 scalar_t__ dwarf_global_formref (int ,int *,int *) ;
 scalar_t__ dwarf_offdie (int ,int ,int *,int *) ;
 char* strdup (char const*) ;
 int warn (char*) ;

__attribute__((used)) static char *
find_object_name(Dwarf_Debug dbg, Dwarf_Die die)
{
 Dwarf_Die ret_die;
 Dwarf_Attribute at;
 Dwarf_Off off;
 Dwarf_Error de;
 const char *str;
 char *name;

 if (dwarf_attrval_string(die, DW_AT_name, &str, &de) == DW_DLV_OK) {
  if ((name = strdup(str)) == ((void*)0)) {
   warn("strdup");
   return (((void*)0));
  }
  return (name);
 }

 if (dwarf_attr(die, DW_AT_specification, &at, &de) != DW_DLV_OK)
  return (((void*)0));

 if (dwarf_global_formref(at, &off, &de) != DW_DLV_OK)
  return (((void*)0));

 if (dwarf_offdie(dbg, off, &ret_die, &de) != DW_DLV_OK)
  return (((void*)0));

 return (find_object_name(dbg, ret_die));
}
