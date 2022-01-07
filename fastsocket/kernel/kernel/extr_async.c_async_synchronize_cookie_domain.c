
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_domain {int dummy; } ;
typedef int ktime_t ;
typedef scalar_t__ async_cookie_t ;


 scalar_t__ SYSTEM_BOOTING ;
 int async_done ;
 int current ;
 scalar_t__ initcall_debug ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ lowest_in_progress (struct async_domain*) ;
 int printk (char*,int ,...) ;
 scalar_t__ system_state ;
 int task_pid_nr (int ) ;
 int wait_event (int ,int) ;

void async_synchronize_cookie_domain(async_cookie_t cookie, struct async_domain *running)
{
 ktime_t starttime, delta, endtime;

 if (!running)
  return;

 if (initcall_debug && system_state == SYSTEM_BOOTING) {
  printk("async_waiting @ %i\n", task_pid_nr(current));
  starttime = ktime_get();
 }

 wait_event(async_done, lowest_in_progress(running) >= cookie);

 if (initcall_debug && system_state == SYSTEM_BOOTING) {
  endtime = ktime_get();
  delta = ktime_sub(endtime, starttime);

  printk("async_continuing @ %i after %lli usec\n",
   task_pid_nr(current),
   (long long)ktime_to_ns(delta) >> 10);
 }
}
