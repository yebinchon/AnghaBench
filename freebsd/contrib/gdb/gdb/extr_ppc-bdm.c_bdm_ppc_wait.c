
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sig; } ;
struct target_waitstatus {TYPE_1__ value; int kind; } ;
typedef int ptid_t ;


 int TARGET_SIGNAL_INT ;
 int TARGET_SIGNAL_TRAP ;
 int TARGET_WAITKIND_STOPPED ;
 int fprintf_unfiltered (int ,char*,unsigned long,unsigned long) ;
 int gdb_stdout ;
 int inferior_ptid ;
 unsigned long ocd_read_bdm_register (int) ;
 int ocd_wait () ;

__attribute__((used)) static ptid_t
bdm_ppc_wait (ptid_t ptid, struct target_waitstatus *target_status)
{
  int stop_reason;

  target_status->kind = TARGET_WAITKIND_STOPPED;

  stop_reason = ocd_wait ();

  if (stop_reason)
    {
      target_status->value.sig = TARGET_SIGNAL_INT;
      return inferior_ptid;
    }

  target_status->value.sig = TARGET_SIGNAL_TRAP;
  return inferior_ptid;
}
