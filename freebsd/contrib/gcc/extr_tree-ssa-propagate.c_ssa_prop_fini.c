
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_free (int ,int ,int *) ;
 int basic_block ;
 int bb_in_list ;
 int * cfg_blocks ;
 int executable_blocks ;
 int gc ;
 int heap ;
 int * interesting_ssa_edges ;
 int sbitmap_free (int ) ;
 int tree ;
 int * varying_ssa_edges ;

__attribute__((used)) static void
ssa_prop_fini (void)
{
  VEC_free (tree, gc, interesting_ssa_edges);
  VEC_free (tree, gc, varying_ssa_edges);
  VEC_free (basic_block, heap, cfg_blocks);
  cfg_blocks = ((void*)0);
  sbitmap_free (bb_in_list);
  sbitmap_free (executable_blocks);
}
