
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_obstack_release (int *) ;
 int free_aux_for_blocks () ;
 int greg_obstack ;

__attribute__((used)) static void
free_bb_info (void)
{
  bitmap_obstack_release (&greg_obstack);
  free_aux_for_blocks ();
}
