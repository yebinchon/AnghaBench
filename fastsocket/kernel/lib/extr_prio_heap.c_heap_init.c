
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_heap {size_t max; int (* gt ) (void*,void*) ;scalar_t__ size; int ptrs; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int kmalloc (size_t,int ) ;

int heap_init(struct ptr_heap *heap, size_t size, gfp_t gfp_mask,
       int (*gt)(void *, void *))
{
 heap->ptrs = kmalloc(size, gfp_mask);
 if (!heap->ptrs)
  return -ENOMEM;
 heap->size = 0;
 heap->max = size / sizeof(void *);
 heap->gt = gt;
 return 0;
}
