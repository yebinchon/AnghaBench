
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {int list; } ;
struct kmem_list3 {size_t colour_next; int list_lock; int free_objects; int slabs_free; } ;
struct kmem_cache {size_t colour; size_t colour_off; scalar_t__ num; struct kmem_list3** nodelists; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int GFP_CONSTRAINT_MASK ;
 int GFP_RECLAIM_MASK ;
 int GFP_SLAB_BUG_MASK ;
 int STATS_INC_GROWN (struct kmem_cache*) ;
 int __GFP_WAIT ;
 struct slab* alloc_slabmgmt (struct kmem_cache*,void*,size_t,int,int) ;
 int cache_init_objs (struct kmem_cache*,struct slab*) ;
 int check_irq_off () ;
 int kmem_flagcheck (struct kmem_cache*,int) ;
 int kmem_freepages (struct kmem_cache*,void*) ;
 void* kmem_getpages (struct kmem_cache*,int,int) ;
 int list_add_tail (int *,int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int slab_map_pages (struct kmem_cache*,struct slab*,void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cache_grow(struct kmem_cache *cachep,
  gfp_t flags, int nodeid, void *objp)
{
 struct slab *slabp;
 size_t offset;
 gfp_t local_flags;
 struct kmem_list3 *l3;





 BUG_ON(flags & GFP_SLAB_BUG_MASK);
 local_flags = flags & (GFP_CONSTRAINT_MASK|GFP_RECLAIM_MASK);


 check_irq_off();
 l3 = cachep->nodelists[nodeid];
 spin_lock(&l3->list_lock);


 offset = l3->colour_next;
 l3->colour_next++;
 if (l3->colour_next >= cachep->colour)
  l3->colour_next = 0;
 spin_unlock(&l3->list_lock);

 offset *= cachep->colour_off;

 if (local_flags & __GFP_WAIT)
  local_irq_enable();







 kmem_flagcheck(cachep, flags);





 if (!objp)
  objp = kmem_getpages(cachep, local_flags, nodeid);
 if (!objp)
  goto failed;


 slabp = alloc_slabmgmt(cachep, objp, offset,
   local_flags & ~GFP_CONSTRAINT_MASK, nodeid);
 if (!slabp)
  goto opps1;

 slab_map_pages(cachep, slabp, objp);

 cache_init_objs(cachep, slabp);

 if (local_flags & __GFP_WAIT)
  local_irq_disable();
 check_irq_off();
 spin_lock(&l3->list_lock);


 list_add_tail(&slabp->list, &(l3->slabs_free));
 STATS_INC_GROWN(cachep);
 l3->free_objects += cachep->num;
 spin_unlock(&l3->list_lock);
 return 1;
opps1:
 kmem_freepages(cachep, objp);
failed:
 if (local_flags & __GFP_WAIT)
  local_irq_disable();
 return 0;
}
