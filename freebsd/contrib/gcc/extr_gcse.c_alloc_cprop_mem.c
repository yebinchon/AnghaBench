
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* cprop_absaltered ;
 void* cprop_avin ;
 void* cprop_avout ;
 void* cprop_pavloc ;
 void* sbitmap_vector_alloc (int,int) ;

__attribute__((used)) static void
alloc_cprop_mem (int n_blocks, int n_sets)
{
  cprop_pavloc = sbitmap_vector_alloc (n_blocks, n_sets);
  cprop_absaltered = sbitmap_vector_alloc (n_blocks, n_sets);

  cprop_avin = sbitmap_vector_alloc (n_blocks, n_sets);
  cprop_avout = sbitmap_vector_alloc (n_blocks, n_sets);
}
