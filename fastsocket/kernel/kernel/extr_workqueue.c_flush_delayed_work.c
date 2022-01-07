
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int work; int timer; } ;
struct cpu_workqueue_struct {int dummy; } ;


 int __queue_work (struct cpu_workqueue_struct*,int *) ;
 scalar_t__ del_timer_sync (int *) ;
 int flush_work (int *) ;
 int get_cpu () ;
 int keventd_wq ;
 int put_cpu () ;
 struct cpu_workqueue_struct* wq_per_cpu (int ,int ) ;

void flush_delayed_work(struct delayed_work *dwork)
{
 if (del_timer_sync(&dwork->timer)) {
  struct cpu_workqueue_struct *cwq;
  cwq = wq_per_cpu(keventd_wq, get_cpu());
  __queue_work(cwq, &dwork->work);
  put_cpu();
 }
 flush_work(&dwork->work);
}
