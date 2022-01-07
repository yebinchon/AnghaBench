
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_workqueue_struct {scalar_t__ thread; } ;
struct TYPE_2__ {int cpu_wq; } ;


 int BUG_ON (int) ;
 scalar_t__ current ;
 TYPE_1__* keventd_wq ;
 struct cpu_workqueue_struct* per_cpu_ptr (int ,int) ;
 int raw_smp_processor_id () ;

int current_is_keventd(void)
{
 struct cpu_workqueue_struct *cwq;
 int cpu = raw_smp_processor_id();
 int ret = 0;

 BUG_ON(!keventd_wq);

 cwq = per_cpu_ptr(keventd_wq->cpu_wq, cpu);
 if (current == cwq->thread)
  ret = 1;

 return ret;

}
