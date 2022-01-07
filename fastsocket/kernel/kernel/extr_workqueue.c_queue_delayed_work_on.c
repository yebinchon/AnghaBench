
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct work_struct {int entry; } ;
struct timer_list {unsigned long data; int function; scalar_t__ expires; } ;
struct delayed_work {struct timer_list timer; struct work_struct work; } ;


 int BUG_ON (int) ;
 int WORK_STRUCT_PENDING ;
 int add_timer (struct timer_list*) ;
 int add_timer_on (struct timer_list*,int) ;
 int delayed_work_timer_fn ;
 scalar_t__ jiffies ;
 int list_empty (int *) ;
 int raw_smp_processor_id () ;
 int set_wq_data (struct work_struct*,int ) ;
 int test_and_set_bit (int ,int ) ;
 int timer_pending (struct timer_list*) ;
 int timer_stats_timer_set_start_info (struct timer_list*) ;
 scalar_t__ unlikely (int) ;
 int work_data_bits (struct work_struct*) ;
 int wq_per_cpu (struct workqueue_struct*,int ) ;

int queue_delayed_work_on(int cpu, struct workqueue_struct *wq,
   struct delayed_work *dwork, unsigned long delay)
{
 int ret = 0;
 struct timer_list *timer = &dwork->timer;
 struct work_struct *work = &dwork->work;

 if (!test_and_set_bit(WORK_STRUCT_PENDING, work_data_bits(work))) {
  BUG_ON(timer_pending(timer));
  BUG_ON(!list_empty(&work->entry));

  timer_stats_timer_set_start_info(&dwork->timer);


  set_wq_data(work, wq_per_cpu(wq, raw_smp_processor_id()));
  timer->expires = jiffies + delay;
  timer->data = (unsigned long)dwork;
  timer->function = delayed_work_timer_fn;

  if (unlikely(cpu >= 0))
   add_timer_on(timer, cpu);
  else
   add_timer(timer);
  ret = 1;
 }
 return ret;
}
