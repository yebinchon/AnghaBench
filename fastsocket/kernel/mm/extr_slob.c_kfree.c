
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_page {int page; } ;


 int ARCH_KMALLOC_MINALIGN ;
 int ARCH_SLAB_MINALIGN ;
 int ZERO_OR_NULL_PTR (void const*) ;
 int _RET_IP_ ;
 scalar_t__ is_slob_page (struct slob_page*) ;
 int kmemleak_free (void const*) ;
 int max (int ,int ) ;
 int put_page (int *) ;
 int slob_free (unsigned int*,unsigned int) ;
 struct slob_page* slob_page (void const*) ;
 int trace_kfree (int ,void const*) ;
 scalar_t__ unlikely (int ) ;

void kfree(const void *block)
{
 struct slob_page *sp;

 trace_kfree(_RET_IP_, block);

 if (unlikely(ZERO_OR_NULL_PTR(block)))
  return;
 kmemleak_free(block);

 sp = slob_page(block);
 if (is_slob_page(sp)) {
  int align = max(ARCH_KMALLOC_MINALIGN, ARCH_SLAB_MINALIGN);
  unsigned int *m = (unsigned int *)(block - align);
  slob_free(m, *m + align);
 } else
  put_page(&sp->page);
}
