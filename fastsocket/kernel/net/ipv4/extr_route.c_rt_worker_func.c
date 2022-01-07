
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int expires_work ;
 int ip_rt_gc_interval ;
 int rt_check_expire () ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void rt_worker_func(struct work_struct *work)
{
 rt_check_expire();
 schedule_delayed_work(&expires_work, ip_rt_gc_interval);
}
