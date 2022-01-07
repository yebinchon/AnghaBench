
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int keventd_wq ;
 int queue_work (int ,struct work_struct*) ;

int schedule_work(struct work_struct *work)
{
 return queue_work(keventd_wq, work);
}
