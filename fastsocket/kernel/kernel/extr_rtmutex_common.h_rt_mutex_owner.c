
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex {scalar_t__ owner; } ;


 unsigned long RT_MUTEX_OWNER_MASKALL ;

__attribute__((used)) static inline struct task_struct *rt_mutex_owner(struct rt_mutex *lock)
{
 return (struct task_struct *)
  ((unsigned long)lock->owner & ~RT_MUTEX_OWNER_MASKALL);
}
