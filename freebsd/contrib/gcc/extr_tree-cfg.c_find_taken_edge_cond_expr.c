
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int edge ;
typedef int basic_block ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int extract_true_false_edges_from_block (int ,int *,int *) ;
 int gcc_assert (int) ;
 scalar_t__ zero_p (int ) ;

__attribute__((used)) static edge
find_taken_edge_cond_expr (basic_block bb, tree val)
{
  edge true_edge, false_edge;

  extract_true_false_edges_from_block (bb, &true_edge, &false_edge);

  gcc_assert (TREE_CODE (val) == INTEGER_CST);
  return (zero_p (val) ? false_edge : true_edge);
}
