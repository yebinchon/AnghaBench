
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int d_is_dll ;
 scalar_t__ d_is_exe ;
 int dll_name ;
 int inform (int ,char const*,int) ;
 int non_fatal (int ) ;
 int set_dll_name_from_def (char const*) ;

void
def_library (const char *name, int base)
{

  inform (_("LIBRARY: %s base: %x"), name, base);

  if (d_is_exe)
    non_fatal (_("Can't have LIBRARY and NAME"));


  if (! dll_name)
    set_dll_name_from_def (name);
  d_is_dll = 1;
}
