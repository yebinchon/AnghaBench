
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 int BSI_NEW_STMT ;
 int DECL_NONLOCAL (int ) ;
 scalar_t__ LABEL_EXPR ;
 int LABEL_EXPR_LABEL (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int bsi_end_p (int ) ;
 int bsi_insert_before (int *,int ,int ) ;
 int bsi_move_before (int *,int *) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;
 int build1 (scalar_t__,int ,int ) ;
 int create_artificial_label () ;
 int void_type_node ;

tree
tree_block_label (basic_block bb)
{
  block_stmt_iterator i, s = bsi_start (bb);
  bool first = 1;
  tree label, stmt;

  for (i = s; !bsi_end_p (i); first = 0, bsi_next (&i))
    {
      stmt = bsi_stmt (i);
      if (TREE_CODE (stmt) != LABEL_EXPR)
 break;
      label = LABEL_EXPR_LABEL (stmt);
      if (!DECL_NONLOCAL (label))
 {
   if (!first)
     bsi_move_before (&i, &s);
   return label;
 }
    }

  label = create_artificial_label ();
  stmt = build1 (LABEL_EXPR, void_type_node, label);
  bsi_insert_before (&s, stmt, BSI_NEW_STMT);
  return label;
}
