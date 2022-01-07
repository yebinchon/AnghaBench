
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t private; } ;
struct slob_page {TYPE_1__ page; } ;


 int ARCH_KMALLOC_MINALIGN ;
 int ARCH_SLAB_MINALIGN ;
 int BUG_ON (int) ;
 size_t SLOB_UNIT ;
 size_t SLOB_UNITS (unsigned int) ;
 void const* ZERO_SIZE_PTR ;
 scalar_t__ is_slob_page (struct slob_page*) ;
 int max (int ,int ) ;
 struct slob_page* slob_page (void const*) ;
 scalar_t__ unlikely (int) ;

size_t ksize(const void *block)
{
 struct slob_page *sp;

 BUG_ON(!block);
 if (unlikely(block == ZERO_SIZE_PTR))
  return 0;

 sp = slob_page(block);
 if (is_slob_page(sp)) {
  int align = max(ARCH_KMALLOC_MINALIGN, ARCH_SLAB_MINALIGN);
  unsigned int *m = (unsigned int *)(block - align);
  return SLOB_UNITS(*m) * SLOB_UNIT;
 } else
  return sp->page.private;
}
