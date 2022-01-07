
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_aux_for_edges () ;
 int edge_aux_obstack ;
 int * first_edge_aux_obj ;
 int gcc_assert (int *) ;
 int obstack_free (int *,int *) ;

void
free_aux_for_edges (void)
{
  gcc_assert (first_edge_aux_obj);
  obstack_free (&edge_aux_obstack, first_edge_aux_obj);
  first_edge_aux_obj = ((void*)0);

  clear_aux_for_edges ();
}
