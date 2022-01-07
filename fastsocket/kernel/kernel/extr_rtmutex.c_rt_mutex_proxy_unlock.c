
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex {int dummy; } ;


 int debug_rt_mutex_proxy_unlock (struct rt_mutex*) ;
 int rt_mutex_deadlock_account_unlock (struct task_struct*) ;
 int rt_mutex_set_owner (struct rt_mutex*,int *,int ) ;

void rt_mutex_proxy_unlock(struct rt_mutex *lock,
      struct task_struct *proxy_owner)
{
 debug_rt_mutex_proxy_unlock(lock);
 rt_mutex_set_owner(lock, ((void*)0), 0);
 rt_mutex_deadlock_account_unlock(proxy_owner);
}
