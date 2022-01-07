
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct task_struct {unsigned int lockdep_depth; scalar_t__ curr_chain_key; struct held_lock* held_locks; } ;
struct lockdep_map {struct lock_class* class_cache; } ;
struct lock_class {int name_version; int name; int key; int ops; } ;
struct held_lock {int class_idx; int references; unsigned long acquire_ip; int trylock; int read; int check; int hardirqs_off; scalar_t__ prev_chain_key; int holdtime_stamp; scalar_t__ waittime_stamp; struct lockdep_map* nest_lock; struct lockdep_map* instance; } ;
typedef int atomic_t ;


 scalar_t__ DEBUG_LOCKS_WARN_ON (int) ;
 int LOCK_USED ;
 unsigned int MAX_LOCKDEP_KEYS ;
 unsigned int MAX_LOCKDEP_SUBCLASSES ;
 unsigned int MAX_LOCK_DEPTH ;
 int check_chain_key (struct task_struct*) ;
 struct task_struct* current ;
 int debug_atomic_inc (int *) ;
 int debug_locks ;
 int debug_locks_off () ;
 int dump_stack () ;
 int irqs_disabled () ;
 scalar_t__ iterate_chain_key (scalar_t__,unsigned int) ;
 struct lock_class* lock_classes ;
 int lockstat_clock () ;
 int mark_irqflags (struct task_struct*,struct held_lock*) ;
 int mark_lock (struct task_struct*,struct held_lock*,int ) ;
 unsigned int max_lockdep_depth ;
 int printk (char*,...) ;
 int prove_locking ;
 struct lock_class* register_lock_class (struct lockdep_map*,unsigned int,int ) ;
 scalar_t__ separate_irq_context (struct task_struct*,struct held_lock*) ;
 scalar_t__ unlikely (int) ;
 int validate_chain (struct task_struct*,struct lockdep_map*,struct held_lock*,int,scalar_t__) ;
 scalar_t__ very_verbose (struct lock_class*) ;

__attribute__((used)) static int __lock_acquire(struct lockdep_map *lock, unsigned int subclass,
     int trylock, int read, int check, int hardirqs_off,
     struct lockdep_map *nest_lock, unsigned long ip,
     int references)
{
 struct task_struct *curr = current;
 struct lock_class *class = ((void*)0);
 struct held_lock *hlock;
 unsigned int depth, id;
 int chain_head = 0;
 int class_idx;
 u64 chain_key;

 if (!prove_locking)
  check = 1;

 if (unlikely(!debug_locks))
  return 0;

 if (DEBUG_LOCKS_WARN_ON(!irqs_disabled()))
  return 0;

 if (unlikely(subclass >= MAX_LOCKDEP_SUBCLASSES)) {
  debug_locks_off();
  printk("BUG: MAX_LOCKDEP_SUBCLASSES too low!\n");
  printk("turning off the locking correctness validator.\n");
  dump_stack();
  return 0;
 }

 if (!subclass)
  class = lock->class_cache;



 if (unlikely(!class)) {
  class = register_lock_class(lock, subclass, 0);
  if (!class)
   return 0;
 }
 debug_atomic_inc((atomic_t *)&class->ops);
 if (very_verbose(class)) {
  printk("\nacquire class [%p] %s", class->key, class->name);
  if (class->name_version > 1)
   printk("#%d", class->name_version);
  printk("\n");
  dump_stack();
 }






 depth = curr->lockdep_depth;
 if (DEBUG_LOCKS_WARN_ON(depth >= MAX_LOCK_DEPTH))
  return 0;

 class_idx = class - lock_classes + 1;

 if (depth) {
  hlock = curr->held_locks + depth - 1;
  if (hlock->class_idx == class_idx && nest_lock) {
   if (hlock->references)
    hlock->references++;
   else
    hlock->references = 2;

   return 1;
  }
 }

 hlock = curr->held_locks + depth;
 if (DEBUG_LOCKS_WARN_ON(!class))
  return 0;
 hlock->class_idx = class_idx;
 hlock->acquire_ip = ip;
 hlock->instance = lock;
 hlock->nest_lock = nest_lock;
 hlock->trylock = trylock;
 hlock->read = read;
 hlock->check = check;
 hlock->hardirqs_off = !!hardirqs_off;
 hlock->references = references;





 if (check == 2 && !mark_irqflags(curr, hlock))
  return 0;


 if (!mark_lock(curr, hlock, LOCK_USED))
  return 0;
 id = class - lock_classes;
 if (DEBUG_LOCKS_WARN_ON(id >= MAX_LOCKDEP_KEYS))
  return 0;

 chain_key = curr->curr_chain_key;
 if (!depth) {
  if (DEBUG_LOCKS_WARN_ON(chain_key != 0))
   return 0;
  chain_head = 1;
 }

 hlock->prev_chain_key = chain_key;
 if (separate_irq_context(curr, hlock)) {
  chain_key = 0;
  chain_head = 1;
 }
 chain_key = iterate_chain_key(chain_key, id);

 if (!validate_chain(curr, lock, hlock, chain_head, chain_key))
  return 0;

 curr->curr_chain_key = chain_key;
 curr->lockdep_depth++;
 check_chain_key(curr);




 if (unlikely(curr->lockdep_depth >= MAX_LOCK_DEPTH)) {
  debug_locks_off();
  printk("BUG: MAX_LOCK_DEPTH too low!\n");
  printk("turning off the locking correctness validator.\n");
  dump_stack();
  return 0;
 }

 if (unlikely(curr->lockdep_depth > max_lockdep_depth))
  max_lockdep_depth = curr->lockdep_depth;

 return 1;
}
