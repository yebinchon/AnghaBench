
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_hung_uninterruptible_tasks (unsigned long) ;
 int current ;
 scalar_t__ schedule_timeout_interruptible (int ) ;
 int set_user_nice (int ,int ) ;
 unsigned long sysctl_hung_task_timeout_secs ;
 int timeout_jiffies (unsigned long) ;

__attribute__((used)) static int watchdog(void *dummy)
{
 set_user_nice(current, 0);

 for ( ; ; ) {
  unsigned long timeout = sysctl_hung_task_timeout_secs;

  while (schedule_timeout_interruptible(timeout_jiffies(timeout)))
   timeout = sysctl_hung_task_timeout_secs;

  check_hung_uninterruptible_tasks(timeout);
 }

 return 0;
}
