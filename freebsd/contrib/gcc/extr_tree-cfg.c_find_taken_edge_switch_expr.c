
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int edge ;
typedef int basic_block ;


 int CASE_LABEL (int ) ;
 int find_case_label_for_value (int ,int ) ;
 int find_edge (int ,int ) ;
 int gcc_assert (int ) ;
 int label_to_block (int ) ;
 int last_stmt (int ) ;

__attribute__((used)) static edge
find_taken_edge_switch_expr (basic_block bb, tree val)
{
  tree switch_expr, taken_case;
  basic_block dest_bb;
  edge e;

  switch_expr = last_stmt (bb);
  taken_case = find_case_label_for_value (switch_expr, val);
  dest_bb = label_to_block (CASE_LABEL (taken_case));

  e = find_edge (bb, dest_bb);
  gcc_assert (e);
  return e;
}
