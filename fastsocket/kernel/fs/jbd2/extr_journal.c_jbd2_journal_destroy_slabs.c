
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JBD2_MAX_SLABS ;
 int ** jbd2_slab ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void jbd2_journal_destroy_slabs(void)
{
 int i;

 for (i = 0; i < JBD2_MAX_SLABS; i++) {
  if (jbd2_slab[i])
   kmem_cache_destroy(jbd2_slab[i]);
  jbd2_slab[i] = ((void*)0);
 }
}
