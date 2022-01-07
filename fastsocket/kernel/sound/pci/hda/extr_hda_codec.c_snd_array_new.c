
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_array {int elem_size; int used; int alloced; int alloc_align; void* list; } ;


 int GFP_KERNEL ;
 int __GFP_ZERO ;
 void* krealloc (void*,int,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 void* snd_array_elem (struct snd_array*,int ) ;

void *snd_array_new(struct snd_array *array)
{
 if (snd_BUG_ON(!array->elem_size))
  return ((void*)0);
 if (array->used >= array->alloced) {
  int num = array->alloced + array->alloc_align;
  int size = (num + 1) * array->elem_size;
  void *nlist;
  if (snd_BUG_ON(num >= 4096))
   return ((void*)0);
  nlist = krealloc(array->list, size, GFP_KERNEL | __GFP_ZERO);
  if (!nlist)
   return ((void*)0);
  array->list = nlist;
  array->alloced = num;
 }
 return snd_array_elem(array, array->used++);
}
