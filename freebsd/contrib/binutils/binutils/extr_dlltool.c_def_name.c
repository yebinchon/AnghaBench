
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 scalar_t__ d_is_dll ;
 int d_is_exe ;
 int dll_name ;
 int inform (int ,char const*,int) ;
 int non_fatal (int ) ;
 int set_dll_name_from_def (char const*) ;

void
def_name (const char *name, int base)
{

  inform (_("NAME: %s base: %x"), name, base);

  if (d_is_dll)
    non_fatal (_("Can't have LIBRARY and NAME"));



  if (! dll_name)
    set_dll_name_from_def (name);
  d_is_exe = 1;
}
