
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITMAP_ALLOC (int *) ;
 void* VEC_alloc (int ,int ,int) ;
 int edge ;
 void* edge_leader ;
 int heap ;
 int leader_has_match ;
 void* stmt_list ;
 int tree ;

__attribute__((used)) static void
init_analyze_edges_for_bb (void)
{
  edge_leader = VEC_alloc (edge, heap, 25);
  stmt_list = VEC_alloc (tree, heap, 25);
  leader_has_match = BITMAP_ALLOC (((void*)0));
}
