
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {int size_order; int hash_mask; int gates_lock; int * hashwlock; int hash_rnd; int entries; struct mesh_table* hash_buckets; } ;
struct hlist_head {int dummy; } ;
typedef int spinlock_t ;


 int GFP_ATOMIC ;
 int atomic_set (int *,int ) ;
 int get_random_bytes (int *,int) ;
 int kfree (struct mesh_table*) ;
 void* kmalloc (int,int ) ;
 struct mesh_table* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mesh_table *mesh_table_alloc(int size_order)
{
 int i;
 struct mesh_table *newtbl;

 newtbl = kmalloc(sizeof(struct mesh_table), GFP_ATOMIC);
 if (!newtbl)
  return ((void*)0);

 newtbl->hash_buckets = kzalloc(sizeof(struct hlist_head) *
   (1 << size_order), GFP_ATOMIC);

 if (!newtbl->hash_buckets) {
  kfree(newtbl);
  return ((void*)0);
 }

 newtbl->hashwlock = kmalloc(sizeof(spinlock_t) *
   (1 << size_order), GFP_ATOMIC);
 if (!newtbl->hashwlock) {
  kfree(newtbl->hash_buckets);
  kfree(newtbl);
  return ((void*)0);
 }

 newtbl->size_order = size_order;
 newtbl->hash_mask = (1 << size_order) - 1;
 atomic_set(&newtbl->entries, 0);
 get_random_bytes(&newtbl->hash_rnd,
   sizeof(newtbl->hash_rnd));
 for (i = 0; i <= newtbl->hash_mask; i++)
  spin_lock_init(&newtbl->hashwlock[i]);
 spin_lock_init(&newtbl->gates_lock);

 return newtbl;
}
