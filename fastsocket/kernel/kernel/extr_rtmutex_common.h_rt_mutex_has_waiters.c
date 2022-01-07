
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int wait_list; } ;


 int plist_head_empty (int *) ;

__attribute__((used)) static inline int rt_mutex_has_waiters(struct rt_mutex *lock)
{
 return !plist_head_empty(&lock->wait_list);
}
