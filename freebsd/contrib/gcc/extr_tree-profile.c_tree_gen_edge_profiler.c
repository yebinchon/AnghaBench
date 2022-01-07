
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int edge ;


 int GCOV_COUNTER_ARCS ;
 int MODIFY_EXPR ;
 int PLUS_EXPR ;
 int bsi_insert_on_edge (int ,int ) ;
 int build2 (int ,int ,int ,int ) ;
 int create_tmp_var (int ,char*) ;
 int gcov_type_node ;
 int integer_one_node ;
 int tree_coverage_counter_ref (int ,int) ;

__attribute__((used)) static void
tree_gen_edge_profiler (int edgeno, edge e)
{
  tree tmp1 = create_tmp_var (gcov_type_node, "PROF");
  tree tmp2 = create_tmp_var (gcov_type_node, "PROF");
  tree ref = tree_coverage_counter_ref (GCOV_COUNTER_ARCS, edgeno);
  tree stmt1 = build2 (MODIFY_EXPR, gcov_type_node, tmp1, ref);
  tree stmt2 = build2 (MODIFY_EXPR, gcov_type_node, tmp2,
         build2 (PLUS_EXPR, gcov_type_node,
         tmp1, integer_one_node));
  tree stmt3 = build2 (MODIFY_EXPR, gcov_type_node, ref, tmp2);
  bsi_insert_on_edge (e, stmt1);
  bsi_insert_on_edge (e, stmt2);
  bsi_insert_on_edge (e, stmt3);
}
