
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {scalar_t__ inuse; int list; } ;
struct kmem_list3 {scalar_t__ free_objects; scalar_t__ free_limit; int slabs_partial; int slabs_free; } ;
struct kmem_cache {scalar_t__ num; struct kmem_list3** nodelists; } ;


 int STATS_DEC_ACTIVE (struct kmem_cache*) ;
 int check_slabp (struct kmem_cache*,struct slab*) ;
 int check_spinlock_acquired_node (struct kmem_cache*,int) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int slab_destroy (struct kmem_cache*,struct slab*) ;
 int slab_put_obj (struct kmem_cache*,struct slab*,void*,int) ;
 struct slab* virt_to_slab (void*) ;

__attribute__((used)) static void free_block(struct kmem_cache *cachep, void **objpp, int nr_objects,
         int node)
{
 int i;
 struct kmem_list3 *l3;

 for (i = 0; i < nr_objects; i++) {
  void *objp = objpp[i];
  struct slab *slabp;

  slabp = virt_to_slab(objp);
  l3 = cachep->nodelists[node];
  list_del(&slabp->list);
  check_spinlock_acquired_node(cachep, node);
  check_slabp(cachep, slabp);
  slab_put_obj(cachep, slabp, objp, node);
  STATS_DEC_ACTIVE(cachep);
  l3->free_objects++;
  check_slabp(cachep, slabp);


  if (slabp->inuse == 0) {
   if (l3->free_objects > l3->free_limit) {
    l3->free_objects -= cachep->num;






    slab_destroy(cachep, slabp);
   } else {
    list_add(&slabp->list, &l3->slabs_free);
   }
  } else {




   list_add_tail(&slabp->list, &l3->slabs_partial);
  }
 }
}
