
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int * magic; } ;


 int WARN_ON (int ) ;
 int rt_mutex_is_locked (struct rt_mutex*) ;

void rt_mutex_destroy(struct rt_mutex *lock)
{
 WARN_ON(rt_mutex_is_locked(lock));



}
