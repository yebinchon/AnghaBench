
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cleanup {int dummy; } ;
typedef int ps_err_e ;
typedef scalar_t__ prgregset_t ;
typedef int lwpid_t ;
typedef TYPE_1__* gdb_ps_prochandle_t ;
typedef int gdb_gregset_t ;
struct TYPE_3__ {int pid; } ;


 int BUILD_LWP (int ,int ) ;
 int PS_OK ;
 int do_cleanups (struct cleanup*) ;
 int inferior_ptid ;
 struct cleanup* save_inferior_ptid () ;
 int supply_gregset (int *) ;
 int target_store_registers (int) ;

ps_err_e
ps_lsetregs (gdb_ps_prochandle_t ph, lwpid_t lwpid, const prgregset_t gregset)
{
  struct cleanup *old_chain = save_inferior_ptid ();

  inferior_ptid = BUILD_LWP (lwpid, ph->pid);


  supply_gregset ((gdb_gregset_t *) gregset);
  target_store_registers (-1);

  do_cleanups (old_chain);
  return PS_OK;
}
