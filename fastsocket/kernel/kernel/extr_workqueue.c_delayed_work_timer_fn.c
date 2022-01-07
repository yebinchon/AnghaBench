
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct delayed_work {int work; } ;
struct cpu_workqueue_struct {struct workqueue_struct* wq; } ;


 int __queue_work (int ,int *) ;
 struct cpu_workqueue_struct* get_wq_data (int *) ;
 int smp_processor_id () ;
 int wq_per_cpu (struct workqueue_struct*,int ) ;

__attribute__((used)) static void delayed_work_timer_fn(unsigned long __data)
{
 struct delayed_work *dwork = (struct delayed_work *)__data;
 struct cpu_workqueue_struct *cwq = get_wq_data(&dwork->work);
 struct workqueue_struct *wq = cwq->wq;

 __queue_work(wq_per_cpu(wq, smp_processor_id()), &dwork->work);
}
