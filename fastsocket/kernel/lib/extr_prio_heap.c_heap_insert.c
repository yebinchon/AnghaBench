
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_heap {void** ptrs; scalar_t__ size; scalar_t__ max; scalar_t__ (* gt ) (void*,void*) ;} ;


 scalar_t__ stub1 (void*,void*) ;
 scalar_t__ stub2 (void*,void*) ;
 scalar_t__ stub3 (void*,void*) ;
 scalar_t__ stub4 (void*,void*) ;

void *heap_insert(struct ptr_heap *heap, void *p)
{
 void *res;
 void **ptrs = heap->ptrs;
 int pos;

 if (heap->size < heap->max) {

  pos = heap->size++;
  while (pos > 0 && heap->gt(p, ptrs[(pos-1)/2])) {
   ptrs[pos] = ptrs[(pos-1)/2];
   pos = (pos-1)/2;
  }
  ptrs[pos] = p;
  return ((void*)0);
 }




 if (heap->gt(p, ptrs[0]))
  return p;


 res = ptrs[0];
 ptrs[0] = p;
 pos = 0;

 while (1) {
  int left = 2 * pos + 1;
  int right = 2 * pos + 2;
  int largest = pos;
  if (left < heap->size && heap->gt(ptrs[left], p))
   largest = left;
  if (right < heap->size && heap->gt(ptrs[right], ptrs[largest]))
   largest = right;
  if (largest == pos)
   break;

  ptrs[pos] = ptrs[largest];
  ptrs[largest] = p;
  pos = largest;
 }
 return res;
}
