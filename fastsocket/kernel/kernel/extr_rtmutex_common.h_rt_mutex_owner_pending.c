
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {scalar_t__ owner; } ;


 unsigned long RT_MUTEX_OWNER_PENDING ;

__attribute__((used)) static inline unsigned long rt_mutex_owner_pending(struct rt_mutex *lock)
{
 return (unsigned long)lock->owner & RT_MUTEX_OWNER_PENDING;
}
