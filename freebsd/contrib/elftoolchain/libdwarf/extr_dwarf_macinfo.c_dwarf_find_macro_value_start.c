
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
dwarf_find_macro_value_start(char *macro_string)
{
 char *p;

 if (macro_string == ((void*)0))
  return (((void*)0));

 p = macro_string;
 while (*p != '\0' && *p != ' ')
  p++;
 if (*p == ' ')
  p++;

 return (p);
}
