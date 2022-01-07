
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int owner; } ;


 int current_thread_info () ;

__attribute__((used)) static inline void mutex_set_owner(struct mutex *lock)
{
 lock->owner = current_thread_info();
}
