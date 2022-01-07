
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct work_struct {int dummy; } ;


 int get_cpu () ;
 int put_cpu () ;
 int queue_work_on (int ,struct workqueue_struct*,struct work_struct*) ;

int queue_work(struct workqueue_struct *wq, struct work_struct *work)
{
 int ret;

 ret = queue_work_on(get_cpu(), wq, work);
 put_cpu();

 return ret;
}
