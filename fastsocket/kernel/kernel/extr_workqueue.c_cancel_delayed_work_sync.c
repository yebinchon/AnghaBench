
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int timer; int work; } ;


 int __cancel_work_timer (int *,int *) ;

int cancel_delayed_work_sync(struct delayed_work *dwork)
{
 return __cancel_work_timer(&dwork->work, &dwork->timer);
}
