
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int keventd_wq ;
 int queue_delayed_work_on (int,int ,struct delayed_work*,unsigned long) ;

int schedule_delayed_work_on(int cpu,
   struct delayed_work *dwork, unsigned long delay)
{
 return queue_delayed_work_on(cpu, keventd_wq, dwork, delay);
}
