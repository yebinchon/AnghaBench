
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_non_call_exceptions ;
 int get_insns () ;
 int purge_all_dead_edges () ;
 int reload_cse_regs (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_postreload (void)
{

  reload_cse_regs (get_insns ());


  if (flag_non_call_exceptions)
    purge_all_dead_edges ();
  return 0;
}
