
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PAGE_SIZE ;
 int free_pages (unsigned long,int) ;
 int get_order (size_t) ;
 int get_slab (size_t) ;
 int kmem_cache_free (int ,void*) ;
 int vfree (void*) ;

void jbd2_free(void *ptr, size_t size)
{
 if (size == PAGE_SIZE) {
  free_pages((unsigned long)ptr, 0);
  return;
 }
 if (size > PAGE_SIZE) {
  int order = get_order(size);

  if (order < 3)
   free_pages((unsigned long)ptr, order);
  else
   vfree(ptr);
  return;
 }
 kmem_cache_free(get_slab(size), ptr);
}
