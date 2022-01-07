
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {unsigned long nvcsw; unsigned long nivcsw; int flags; unsigned long last_switch_count; int pid; int comm; } ;
struct TYPE_2__ {int version; int release; } ;


 int PF_FROZEN ;
 int __debug_show_held_locks (struct task_struct*) ;
 TYPE_1__* init_utsname () ;
 int panic (char*) ;
 int pr_err (char*,...) ;
 int print_tainted () ;
 int sched_show_task (struct task_struct*) ;
 scalar_t__ strcspn (int ,char*) ;
 scalar_t__ sysctl_hung_task_panic ;
 int sysctl_hung_task_warnings ;
 int touch_nmi_watchdog () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void check_hung_task(struct task_struct *t, unsigned long timeout)
{
 unsigned long switch_count = t->nvcsw + t->nivcsw;







 if (unlikely(t->flags & PF_FROZEN || !switch_count))
  return;

 if (switch_count != t->last_switch_count) {
  t->last_switch_count = switch_count;
  return;
 }
 if (!sysctl_hung_task_warnings)
  return;
 sysctl_hung_task_warnings--;





 pr_err("INFO: task %s:%d blocked for more than %ld seconds.\n",
  t->comm, t->pid, timeout);
 pr_err("      %s %s %.*s\n",
  print_tainted(), init_utsname()->release,
  (int)strcspn(init_utsname()->version, " "),
  init_utsname()->version);
 pr_err("\"echo 0 > /proc/sys/kernel/hung_task_timeout_secs\""
  " disables this message.\n");
 sched_show_task(t);
 __debug_show_held_locks(t);

 touch_nmi_watchdog();

 if (sysctl_hung_task_panic)
  panic("hung_task: blocked tasks");
}
