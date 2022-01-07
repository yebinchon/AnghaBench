
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * journal_head_cache ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void journal_destroy_journal_head_cache(void)
{
 if (journal_head_cache) {
  kmem_cache_destroy(journal_head_cache);
  journal_head_cache = ((void*)0);
 }
}
