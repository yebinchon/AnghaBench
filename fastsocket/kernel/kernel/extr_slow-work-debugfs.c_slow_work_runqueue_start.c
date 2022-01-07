
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int slow_work_queue_lock ;
 void* slow_work_runqueue_index (struct seq_file*,int *) ;
 int spin_lock_irq (int *) ;

__attribute__((used)) static void *slow_work_runqueue_start(struct seq_file *m, loff_t *_pos)
{
 spin_lock_irq(&slow_work_queue_lock);
 return slow_work_runqueue_index(m, _pos);
}
