
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_heap {int ptrs; } ;


 int kfree (int ) ;

void heap_free(struct ptr_heap *heap)
{
 kfree(heap->ptrs);
}
