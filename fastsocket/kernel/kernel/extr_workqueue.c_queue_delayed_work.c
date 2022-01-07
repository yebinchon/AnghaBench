
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct delayed_work {int work; } ;


 int queue_delayed_work_on (int,struct workqueue_struct*,struct delayed_work*,unsigned long) ;
 int queue_work (struct workqueue_struct*,int *) ;

int queue_delayed_work(struct workqueue_struct *wq,
   struct delayed_work *dwork, unsigned long delay)
{
 if (delay == 0)
  return queue_work(wq, &dwork->work);

 return queue_delayed_work_on(-1, wq, dwork, delay);
}
