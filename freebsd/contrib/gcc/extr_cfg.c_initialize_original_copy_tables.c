
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htab_bb_copy_original_entry {int dummy; } ;


 void* bb_copy ;
 int bb_copy_original_eq ;
 int bb_copy_original_hash ;
 void* bb_original ;
 scalar_t__ create_alloc_pool (char*,int,int) ;
 int gcc_assert (int) ;
 void* htab_create (int,int ,int ,int *) ;
 scalar_t__ original_copy_bb_pool ;

void
initialize_original_copy_tables (void)
{
  gcc_assert (!original_copy_bb_pool);
  original_copy_bb_pool
    = create_alloc_pool ("original_copy",
    sizeof (struct htab_bb_copy_original_entry), 10);
  bb_original = htab_create (10, bb_copy_original_hash,
        bb_copy_original_eq, ((void*)0));
  bb_copy = htab_create (10, bb_copy_original_hash, bb_copy_original_eq, ((void*)0));
}
