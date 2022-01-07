
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * jbd2_journal_head_cache ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void jbd2_journal_destroy_jbd2_journal_head_cache(void)
{
 if (jbd2_journal_head_cache) {
  kmem_cache_destroy(jbd2_journal_head_cache);
  jbd2_journal_head_cache = ((void*)0);
 }
}
