
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
read_pe_truncate_name (char *dll_name)
{
  while (*dll_name)
    {
      if ((*dll_name) == '.')
 {
   *dll_name = '\0';
 }

      else
 {
   ++dll_name;
 }
    }
}
