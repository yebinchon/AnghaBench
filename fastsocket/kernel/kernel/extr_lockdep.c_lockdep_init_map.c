
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockdep_map {char* name; struct lock_class_key* key; int cpu; int * class_cache; } ;
struct lock_class_key {int dummy; } ;


 scalar_t__ DEBUG_LOCKS_WARN_ON (int) ;
 int debug_locks ;
 int printk (char*,struct lock_class_key*) ;
 int raw_smp_processor_id () ;
 int register_lock_class (struct lockdep_map*,int,int) ;
 int static_obj (struct lock_class_key*) ;
 scalar_t__ unlikely (int) ;

void lockdep_init_map(struct lockdep_map *lock, const char *name,
        struct lock_class_key *key, int subclass)
{
 lock->class_cache = ((void*)0);




 if (DEBUG_LOCKS_WARN_ON(!name)) {
  lock->name = "NULL";
  return;
 }

 lock->name = name;

 if (DEBUG_LOCKS_WARN_ON(!key))
  return;



 if (!static_obj(key)) {
  printk("BUG: key %p not in .data!\n", key);
  DEBUG_LOCKS_WARN_ON(1);
  return;
 }
 lock->key = key;

 if (unlikely(!debug_locks))
  return;

 if (subclass)
  register_lock_class(lock, subclass, 1);
}
