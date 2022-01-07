
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ list_empty (int *) ;
 int slow_work_cull ;
 scalar_t__ slow_work_min_threads ;
 int slow_work_queue ;
 int slow_work_queue_lock ;
 int slow_work_schedule_cull () ;
 int slow_work_thread_count ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vslow_work_queue ;

__attribute__((used)) static bool slow_work_cull_thread(void)
{
 unsigned long flags;
 bool do_cull = 0;

 spin_lock_irqsave(&slow_work_queue_lock, flags);

 if (slow_work_cull) {
  slow_work_cull = 0;

  if (list_empty(&slow_work_queue) &&
      list_empty(&vslow_work_queue) &&
      atomic_read(&slow_work_thread_count) >
      slow_work_min_threads) {
   slow_work_schedule_cull();
   do_cull = 1;
  }
 }

 spin_unlock_irqrestore(&slow_work_queue_lock, flags);
 return do_cull;
}
