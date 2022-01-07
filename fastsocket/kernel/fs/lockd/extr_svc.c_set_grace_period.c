
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_delayed_work_sync (int *) ;
 unsigned long get_lockd_grace_period () ;
 int grace_period_end ;
 int lockd_manager ;
 int locks_start_grace (int *) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void set_grace_period(void)
{
 unsigned long grace_period = get_lockd_grace_period();

 locks_start_grace(&lockd_manager);
 cancel_delayed_work_sync(&grace_period_end);
 schedule_delayed_work(&grace_period_end, grace_period);
}
