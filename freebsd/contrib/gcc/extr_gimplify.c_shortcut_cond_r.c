
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ COND_EXPR ;
 int LABEL_EXPR ;
 int * NULL_TREE ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 scalar_t__ TRUTH_ANDIF_EXPR ;
 scalar_t__ TRUTH_ORIF_EXPR ;
 int append_to_statement_list (int *,int **) ;
 int * build1 (int ,int ,int *) ;
 int * build3 (scalar_t__,int ,int *,int *,int *) ;
 int * build_and_jump (int **) ;
 int void_type_node ;

__attribute__((used)) static tree
shortcut_cond_r (tree pred, tree *true_label_p, tree *false_label_p)
{
  tree local_label = NULL_TREE;
  tree t, expr = ((void*)0);




  if (TREE_CODE (pred) == TRUTH_ANDIF_EXPR)
    {






      if (false_label_p == ((void*)0))
 false_label_p = &local_label;

      t = shortcut_cond_r (TREE_OPERAND (pred, 0), ((void*)0), false_label_p);
      append_to_statement_list (t, &expr);

      t = shortcut_cond_r (TREE_OPERAND (pred, 1), true_label_p,
      false_label_p);
      append_to_statement_list (t, &expr);
    }
  else if (TREE_CODE (pred) == TRUTH_ORIF_EXPR)
    {






      if (true_label_p == ((void*)0))
 true_label_p = &local_label;

      t = shortcut_cond_r (TREE_OPERAND (pred, 0), true_label_p, ((void*)0));
      append_to_statement_list (t, &expr);

      t = shortcut_cond_r (TREE_OPERAND (pred, 1), true_label_p,
      false_label_p);
      append_to_statement_list (t, &expr);
    }
  else if (TREE_CODE (pred) == COND_EXPR)
    {





      expr = build3 (COND_EXPR, void_type_node, TREE_OPERAND (pred, 0),
       shortcut_cond_r (TREE_OPERAND (pred, 1), true_label_p,
          false_label_p),
       shortcut_cond_r (TREE_OPERAND (pred, 2), true_label_p,
          false_label_p));
    }
  else
    {
      expr = build3 (COND_EXPR, void_type_node, pred,
       build_and_jump (true_label_p),
       build_and_jump (false_label_p));
    }

  if (local_label)
    {
      t = build1 (LABEL_EXPR, void_type_node, local_label);
      append_to_statement_list (t, &expr);
    }

  return expr;
}
