
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int dummy; } ;


 int clear_rt_mutex_waiters (struct rt_mutex*) ;
 int rt_mutex_has_waiters (struct rt_mutex*) ;

__attribute__((used)) static void fixup_rt_mutex_waiters(struct rt_mutex *lock)
{
 if (!rt_mutex_has_waiters(lock))
  clear_rt_mutex_waiters(lock);
}
