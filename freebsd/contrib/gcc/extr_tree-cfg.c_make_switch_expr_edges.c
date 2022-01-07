
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int basic_block ;


 int CASE_LABEL (int ) ;
 int SWITCH_LABELS (int ) ;
 int TREE_VEC_ELT (int ,size_t) ;
 size_t TREE_VEC_LENGTH (int ) ;
 int label_to_block (int ) ;
 int last_stmt (int ) ;
 int make_edge (int ,int ,int ) ;

__attribute__((used)) static void
make_switch_expr_edges (basic_block bb)
{
  tree entry = last_stmt (bb);
  size_t i, n;
  tree vec;

  vec = SWITCH_LABELS (entry);
  n = TREE_VEC_LENGTH (vec);

  for (i = 0; i < n; ++i)
    {
      tree lab = CASE_LABEL (TREE_VEC_ELT (vec, i));
      basic_block label_bb = label_to_block (lab);
      make_edge (bb, label_bb, 0);
    }
}
