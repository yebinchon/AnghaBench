
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* antloc ;
 void* comp ;
 void* hoist_exprs ;
 void* hoist_vbein ;
 void* hoist_vbeout ;
 void* sbitmap_vector_alloc (int,int) ;
 void* transp ;
 void* transpout ;

__attribute__((used)) static void
alloc_code_hoist_mem (int n_blocks, int n_exprs)
{
  antloc = sbitmap_vector_alloc (n_blocks, n_exprs);
  transp = sbitmap_vector_alloc (n_blocks, n_exprs);
  comp = sbitmap_vector_alloc (n_blocks, n_exprs);

  hoist_vbein = sbitmap_vector_alloc (n_blocks, n_exprs);
  hoist_vbeout = sbitmap_vector_alloc (n_blocks, n_exprs);
  hoist_exprs = sbitmap_vector_alloc (n_blocks, n_exprs);
  transpout = sbitmap_vector_alloc (n_blocks, n_exprs);
}
