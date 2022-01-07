
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_stopper {int lock; int thread; int works; scalar_t__ enabled; } ;
struct cpu_stop_work {int done; int list; } ;


 int cpu_stop_signal_done (int ,int) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void cpu_stop_queue_work(struct cpu_stopper *stopper,
    struct cpu_stop_work *work)
{
 unsigned long flags;

 spin_lock_irqsave(&stopper->lock, flags);

 if (stopper->enabled) {
  list_add_tail(&work->list, &stopper->works);
  wake_up_process(stopper->thread);
 } else
  cpu_stop_signal_done(work->done, 0);

 spin_unlock_irqrestore(&stopper->lock, flags);
}
