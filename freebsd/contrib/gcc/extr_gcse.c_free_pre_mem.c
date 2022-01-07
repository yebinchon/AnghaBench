
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * comp ;
 int * pre_delete_map ;
 int * pre_insert_map ;
 int * pre_optimal ;
 int * pre_redundant ;
 int sbitmap_vector_free (int *) ;
 int * transp ;

__attribute__((used)) static void
free_pre_mem (void)
{
  sbitmap_vector_free (transp);
  sbitmap_vector_free (comp);



  if (pre_optimal)
    sbitmap_vector_free (pre_optimal);
  if (pre_redundant)
    sbitmap_vector_free (pre_redundant);
  if (pre_insert_map)
    sbitmap_vector_free (pre_insert_map);
  if (pre_delete_map)
    sbitmap_vector_free (pre_delete_map);

  transp = comp = ((void*)0);
  pre_optimal = pre_redundant = pre_insert_map = pre_delete_map = ((void*)0);
}
