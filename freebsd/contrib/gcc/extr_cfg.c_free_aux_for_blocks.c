
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int block_aux_obstack ;
 int clear_aux_for_blocks () ;
 int * first_block_aux_obj ;
 int gcc_assert (int *) ;
 int obstack_free (int *,int *) ;

void
free_aux_for_blocks (void)
{
  gcc_assert (first_block_aux_obj);
  obstack_free (&block_aux_obstack, first_block_aux_obj);
  first_block_aux_obj = ((void*)0);

  clear_aux_for_blocks ();
}
