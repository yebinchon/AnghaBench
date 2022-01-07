
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DW_AT_comp_dir ;
 int * dwarf_attr (int *,int ,int *) ;
 char const* dwarf_formstring (int *) ;

const char *cu_get_comp_dir(Dwarf_Die *cu_die)
{
 Dwarf_Attribute attr;
 if (dwarf_attr(cu_die, DW_AT_comp_dir, &attr) == ((void*)0))
  return ((void*)0);
 return dwarf_formstring(&attr);
}
