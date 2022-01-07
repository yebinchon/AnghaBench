
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int dummy; } ;


 int _RET_IP_ ;
 int slab_free (struct kmem_cache*,struct page*,void*,int ) ;
 int trace_kmem_cache_free (int ,void*) ;
 struct page* virt_to_head_page (void*) ;

void kmem_cache_free(struct kmem_cache *s, void *x)
{
 struct page *page;

 page = virt_to_head_page(x);

 slab_free(s, page, x, _RET_IP_);

 trace_kmem_cache_free(_RET_IP_, x);
}
