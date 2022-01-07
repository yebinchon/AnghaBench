
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_suspend_ops {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_mutex ;
 struct platform_suspend_ops* suspend_ops ;

void suspend_set_ops(struct platform_suspend_ops *ops)
{
 mutex_lock(&pm_mutex);
 suspend_ops = ops;
 mutex_unlock(&pm_mutex);
}
