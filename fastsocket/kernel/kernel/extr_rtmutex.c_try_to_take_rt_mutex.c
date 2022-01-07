
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int dummy; } ;


 int current ;
 int debug_rt_mutex_lock (struct rt_mutex*) ;
 int mark_rt_mutex_waiters (struct rt_mutex*) ;
 int rt_mutex_deadlock_account_lock (struct rt_mutex*,int ) ;
 scalar_t__ rt_mutex_owner (struct rt_mutex*) ;
 int rt_mutex_set_owner (struct rt_mutex*,int ,int ) ;
 int try_to_steal_lock (struct rt_mutex*,int ) ;

__attribute__((used)) static int try_to_take_rt_mutex(struct rt_mutex *lock)
{
 mark_rt_mutex_waiters(lock);

 if (rt_mutex_owner(lock) && !try_to_steal_lock(lock, current))
  return 0;


 debug_rt_mutex_lock(lock);

 rt_mutex_set_owner(lock, current, 0);

 rt_mutex_deadlock_account_lock(lock, current);

 return 1;
}
