
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int static_pass_number; } ;


 int TV_DUMP ;
 int build_insn_chain (int ) ;
 scalar_t__ dump_enabled_p (int ) ;
 int dump_file ;
 int dump_global_regs (int ) ;
 int gcc_assert (int) ;
 int get_insns () ;
 int global_alloc () ;
 scalar_t__ optimize ;
 TYPE_1__ pass_global_alloc ;
 int reload (int ,int ) ;
 int reload_completed ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_global_alloc (void)
{
  bool failure;




  if (optimize)
    failure = global_alloc ();
  else
    {
      build_insn_chain (get_insns ());
      failure = reload (get_insns (), 0);
    }

  if (dump_enabled_p (pass_global_alloc.static_pass_number))
    {
      timevar_push (TV_DUMP);
      dump_global_regs (dump_file);
      timevar_pop (TV_DUMP);
    }

  gcc_assert (reload_completed || failure);
  reload_completed = !failure;
  return 0;
}
