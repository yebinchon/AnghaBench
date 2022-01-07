
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct reference {size_t ref; int lock; void* object; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int first_free; size_t index_mask; scalar_t__ init_point; scalar_t__ capacity; size_t start_mask; struct reference* entries; } ;


 int err (char*) ;
 int ref_table_lock ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 TYPE_1__ tipc_ref_table ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

u32 tipc_ref_acquire(void *object, spinlock_t **lock)
{
 struct reference *entry;
 u32 index;
 u32 index_mask;
 u32 next_plus_upper;
 u32 ref;

 if (!object) {
  err("Attempt to acquire reference to non-existent object\n");
  return 0;
 }
 if (!tipc_ref_table.entries) {
  err("Reference table not found during acquisition attempt\n");
  return 0;
 }



 write_lock_bh(&ref_table_lock);
 if (tipc_ref_table.first_free) {
  index = tipc_ref_table.first_free;
  entry = &(tipc_ref_table.entries[index]);
  index_mask = tipc_ref_table.index_mask;

  spin_lock_bh(&entry->lock);
  next_plus_upper = entry->ref;
  tipc_ref_table.first_free = next_plus_upper & index_mask;
  ref = (next_plus_upper & ~index_mask) + index;
  entry->ref = ref;
  entry->object = object;
  *lock = &entry->lock;
 }
 else if (tipc_ref_table.init_point < tipc_ref_table.capacity) {
  index = tipc_ref_table.init_point++;
  entry = &(tipc_ref_table.entries[index]);
  spin_lock_init(&entry->lock);
  spin_lock_bh(&entry->lock);
  ref = tipc_ref_table.start_mask + index;
  entry->ref = ref;
  entry->object = object;
  *lock = &entry->lock;
 }
 else {
  ref = 0;
 }
 write_unlock_bh(&ref_table_lock);

 return ref;
}
