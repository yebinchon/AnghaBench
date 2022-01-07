
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int slab; } ;


 int BUG_ON (int) ;
 int PageCompound (struct page*) ;
 int PageSlab (struct page*) ;
 int ZERO_OR_NULL_PTR (void const*) ;
 int _RET_IP_ ;
 int kmemleak_free (void const*) ;
 int put_page (struct page*) ;
 int slab_free (int ,struct page*,void*,int ) ;
 int trace_kfree (int ,void const*) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_head_page (void const*) ;

void kfree(const void *x)
{
 struct page *page;
 void *object = (void *)x;

 trace_kfree(_RET_IP_, x);

 if (unlikely(ZERO_OR_NULL_PTR(x)))
  return;

 page = virt_to_head_page(x);
 if (unlikely(!PageSlab(page))) {
  BUG_ON(!PageCompound(page));
  kmemleak_free(x);
  put_page(page);
  return;
 }
 slab_free(page->slab, page, object, _RET_IP_);
}
