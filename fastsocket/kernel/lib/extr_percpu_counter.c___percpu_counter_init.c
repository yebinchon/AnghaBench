
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_counter {int list; int counters; int count; int lock; } ;
struct lock_class_key {int dummy; } ;
typedef int s64 ;


 int ENOMEM ;
 int alloc_percpu (int ) ;
 int list_add (int *,int *) ;
 int lockdep_set_class (int *,struct lock_class_key*) ;
 int percpu_counters ;
 int percpu_counters_lock ;
 int s32 ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

int __percpu_counter_init(struct percpu_counter *fbc, s64 amount,
     struct lock_class_key *key)
{
 spin_lock_init(&fbc->lock);
 lockdep_set_class(&fbc->lock, key);
 fbc->count = amount;
 fbc->counters = alloc_percpu(s32);
 if (!fbc->counters)
  return -ENOMEM;





 return 0;
}
