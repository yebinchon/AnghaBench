
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int wait_lock; int wait_list; int * owner; } ;


 int debug_rt_mutex_init (struct rt_mutex*,char const*) ;
 int plist_head_init (int *,int *) ;
 int spin_lock_init (int *) ;

void __rt_mutex_init(struct rt_mutex *lock, const char *name)
{
 lock->owner = ((void*)0);
 spin_lock_init(&lock->wait_lock);
 plist_head_init(&lock->wait_list, &lock->wait_lock);

 debug_rt_mutex_init(lock, name);
}
