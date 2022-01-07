
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwarf_t ;
typedef int Dwarf_Die ;


 int DW_AT_name ;
 int die_string (int *,int ,int ,char**,int ) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
die_name(dwarf_t *dw, Dwarf_Die die)
{
 char *str = ((void*)0);

 (void) die_string(dw, die, DW_AT_name, &str, 0);
 if (str == ((void*)0))
  str = xstrdup("");

 return (str);
}
