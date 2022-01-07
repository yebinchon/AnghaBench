
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef scalar_t__ tree ;
struct lower_data {scalar_t__ return_statements; } ;


 int EXPR_LOCUS (scalar_t__) ;
 int GOTO_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 int SET_EXPR_LOCUS (scalar_t__,int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TSI_SAME_STMT ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 scalar_t__ create_artificial_label () ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 int tsi_delink (int *) ;
 int tsi_link_before (int *,scalar_t__,int ) ;
 scalar_t__ tsi_stmt (int ) ;
 int void_type_node ;

__attribute__((used)) static void
lower_return_expr (tree_stmt_iterator *tsi, struct lower_data *data)
{
  tree stmt = tsi_stmt (*tsi);
  tree value, t, label;


  value = TREE_OPERAND (stmt, 0);
  if (value && TREE_CODE (value) == MODIFY_EXPR)
    value = TREE_OPERAND (value, 1);


  for (t = data->return_statements; t ; t = TREE_CHAIN (t))
    {
      tree tvalue = TREE_OPERAND (TREE_VALUE (t), 0);
      if (tvalue && TREE_CODE (tvalue) == MODIFY_EXPR)
 tvalue = TREE_OPERAND (tvalue, 1);

      if (value == tvalue)
 {
   label = TREE_PURPOSE (t);
   goto found;
 }
    }


  label = create_artificial_label ();
  data->return_statements = tree_cons (label, stmt, data->return_statements);


 found:
  t = build1 (GOTO_EXPR, void_type_node, label);
  SET_EXPR_LOCUS (t, EXPR_LOCUS (stmt));
  tsi_link_before (tsi, t, TSI_SAME_STMT);
  tsi_delink (tsi);
}
