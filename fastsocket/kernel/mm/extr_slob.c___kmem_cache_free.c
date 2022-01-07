
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int get_order (int) ;
 int slob_free (void*,int) ;
 int slob_free_pages (void*,int ) ;

__attribute__((used)) static void __kmem_cache_free(void *b, int size)
{
 if (size < PAGE_SIZE)
  slob_free(b, size);
 else
  slob_free_pages(b, get_order(size));
}
