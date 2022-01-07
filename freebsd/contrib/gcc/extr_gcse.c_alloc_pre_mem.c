
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ae_kill ;
 void* antloc ;
 void* comp ;
 int * pre_delete_map ;
 int * pre_insert_map ;
 int * pre_optimal ;
 int * pre_redundant ;
 void* sbitmap_vector_alloc (int,int) ;
 void* transp ;

__attribute__((used)) static void
alloc_pre_mem (int n_blocks, int n_exprs)
{
  transp = sbitmap_vector_alloc (n_blocks, n_exprs);
  comp = sbitmap_vector_alloc (n_blocks, n_exprs);
  antloc = sbitmap_vector_alloc (n_blocks, n_exprs);

  pre_optimal = ((void*)0);
  pre_redundant = ((void*)0);
  pre_insert_map = ((void*)0);
  pre_delete_map = ((void*)0);
  ae_kill = sbitmap_vector_alloc (n_blocks, n_exprs);


}
