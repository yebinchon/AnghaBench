
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int * BITMAP_ALLOC (int *) ;
 int SSA_NAME_VERSION (int ) ;
 int bitmap_set_bit (int *,int ) ;
 int gcc_assert (int) ;
 int * names_to_release ;
 int need_to_initialize_update_ssa_p ;

void
release_ssa_name_after_update_ssa (tree name)
{
  gcc_assert (!need_to_initialize_update_ssa_p);

  if (names_to_release == ((void*)0))
    names_to_release = BITMAP_ALLOC (((void*)0));

  bitmap_set_bit (names_to_release, SSA_NAME_VERSION (name));
}
