
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int slow_work_queue_lock ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void slow_work_runqueue_stop(struct seq_file *m, void *v)
{
 spin_unlock_irq(&slow_work_queue_lock);
}
