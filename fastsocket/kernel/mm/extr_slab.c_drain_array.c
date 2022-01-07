
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_list3 {int list_lock; } ;
struct kmem_cache {int dummy; } ;
struct array_cache {int avail; int limit; int * entry; scalar_t__ touched; } ;


 int free_block (struct kmem_cache*,int *,int,int) ;
 int memmove (int *,int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void drain_array(struct kmem_cache *cachep, struct kmem_list3 *l3,
    struct array_cache *ac, int force, int node)
{
 int tofree;

 if (!ac || !ac->avail)
  return;
 if (ac->touched && !force) {
  ac->touched = 0;
 } else {
  spin_lock_irq(&l3->list_lock);
  if (ac->avail) {
   tofree = force ? ac->avail : (ac->limit + 4) / 5;
   if (tofree > ac->avail)
    tofree = (ac->avail + 1) / 2;
   free_block(cachep, ac->entry, tofree, node);
   ac->avail -= tofree;
   memmove(ac->entry, &(ac->entry[tofree]),
    sizeof(void *) * ac->avail);
  }
  spin_unlock_irq(&l3->list_lock);
 }
}
