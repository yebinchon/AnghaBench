
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITMAP_FREE (int ) ;
 int VEC_free (int ,int ,int ) ;
 int edge ;
 int edge_leader ;
 int heap ;
 int leader_has_match ;
 int stmt_list ;
 int tree ;

__attribute__((used)) static void
fini_analyze_edges_for_bb (void)
{
  VEC_free (edge, heap, edge_leader);
  VEC_free (tree, heap, stmt_list);
  BITMAP_FREE (leader_has_match);
}
