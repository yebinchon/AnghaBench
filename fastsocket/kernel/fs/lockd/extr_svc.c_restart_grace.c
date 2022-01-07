
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_delayed_work_sync (int *) ;
 int grace_period_end ;
 int lockd_manager ;
 int locks_end_grace (int *) ;
 int nlmsvc_invalidate_all () ;
 scalar_t__ nlmsvc_ops ;
 int set_grace_period () ;

__attribute__((used)) static void restart_grace(void)
{
 if (nlmsvc_ops) {
  cancel_delayed_work_sync(&grace_period_end);
  locks_end_grace(&lockd_manager);
  nlmsvc_invalidate_all();
  set_grace_period();
 }
}
