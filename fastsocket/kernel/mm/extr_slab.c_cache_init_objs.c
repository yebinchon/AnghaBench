
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {int dummy; } ;
struct kmem_cache {int num; int flags; int buffer_size; int (* ctor ) (void*) ;} ;


 int BUFCTL_END ;
 scalar_t__ OFF_SLAB (struct kmem_cache*) ;
 int PAGE_SIZE ;
 int POISON_FREE ;
 scalar_t__ RED_INACTIVE ;
 int SLAB_POISON ;
 int SLAB_RED_ZONE ;
 int SLAB_STORE_USER ;
 scalar_t__* dbg_redzone1 (struct kmem_cache*,void*) ;
 scalar_t__* dbg_redzone2 (struct kmem_cache*,void*) ;
 int ** dbg_userword (struct kmem_cache*,void*) ;
 void* index_to_obj (struct kmem_cache*,struct slab*,int) ;
 int kernel_map_pages (int ,int,int ) ;
 int obj_offset (struct kmem_cache*) ;
 int poison_obj (struct kmem_cache*,void*,int ) ;
 int* slab_bufctl (struct slab*) ;
 int slab_error (struct kmem_cache*,char*) ;
 int stub1 (void*) ;
 int stub2 (void*) ;
 int virt_to_page (void*) ;

__attribute__((used)) static void cache_init_objs(struct kmem_cache *cachep,
       struct slab *slabp)
{
 int i;

 for (i = 0; i < cachep->num; i++) {
  void *objp = index_to_obj(cachep, slabp, i);
  if (cachep->ctor)
   cachep->ctor(objp);

  slab_bufctl(slabp)[i] = i + 1;
 }
 slab_bufctl(slabp)[i - 1] = BUFCTL_END;
}
