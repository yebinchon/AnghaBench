
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bb_copy ;
 int * bb_original ;
 int free_alloc_pool (int *) ;
 int gcc_assert (int *) ;
 int htab_delete (int *) ;
 int * original_copy_bb_pool ;

void
free_original_copy_tables (void)
{
  gcc_assert (original_copy_bb_pool);
  htab_delete (bb_copy);
  htab_delete (bb_original);
  free_alloc_pool (original_copy_bb_pool);
  bb_copy = ((void*)0);
  bb_original = ((void*)0);
  original_copy_bb_pool = ((void*)0);
}
