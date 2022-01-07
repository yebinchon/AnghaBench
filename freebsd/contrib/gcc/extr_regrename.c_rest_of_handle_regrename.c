
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copyprop_hardreg_forward () ;
 scalar_t__ flag_cprop_registers ;
 scalar_t__ flag_rename_registers ;
 int regrename_optimize () ;

__attribute__((used)) static unsigned int
rest_of_handle_regrename (void)
{
  if (flag_rename_registers)
    regrename_optimize ();
  if (flag_cprop_registers)
    copyprop_hardreg_forward ();
  return 0;
}
