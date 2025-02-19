
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int bdi; } ;


 unsigned long HZ ;
 int dirty_writeback_interval ;
 unsigned long jiffies ;
 int kthread_should_stop () ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule () ;
 int schedule_timeout_interruptible (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int trace_writeback_pages_written (long) ;
 int trace_writeback_task_start (int ) ;
 int trace_writeback_task_stop (int ) ;
 int try_to_freeze () ;
 long wb_do_writeback (struct bdi_writeback*,int ) ;

int bdi_writeback_task(struct bdi_writeback *wb)
{
 unsigned long last_active = jiffies;
 unsigned long wait_jiffies = -1UL;
 long pages_written;

 trace_writeback_task_start(wb->bdi);

 while (!kthread_should_stop()) {
  pages_written = wb_do_writeback(wb, 0);

  trace_writeback_pages_written(pages_written);

  if (pages_written)
   last_active = jiffies;
  else if (wait_jiffies != -1UL) {
   unsigned long max_idle;






   max_idle = max(5UL * 60 * HZ, wait_jiffies);
   if (time_after(jiffies, max_idle + last_active))
    break;
  }

  if (dirty_writeback_interval) {
   wait_jiffies = msecs_to_jiffies(dirty_writeback_interval * 10);
   schedule_timeout_interruptible(wait_jiffies);
  } else
   schedule();

  try_to_freeze();
 }

 trace_writeback_task_stop(wb->bdi);

 return 0;
}
