
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;



 int COND_EXPR_COND (int ) ;
 int GOTO_DESTINATION (int ) ;


 int LABEL_EXPR_LABEL (int ) ;


 int SWITCH_COND (int ) ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int WITH_SIZE_EXPR ;

tree
get_rhs (tree stmt)
{
  enum tree_code code = TREE_CODE (stmt);

  switch (code)
    {
    case 129:
      stmt = TREE_OPERAND (stmt, 0);
      if (!stmt || TREE_CODE (stmt) != 130)
 return stmt;


    case 130:
      stmt = TREE_OPERAND (stmt, 1);
      if (TREE_CODE (stmt) == WITH_SIZE_EXPR)
 return TREE_OPERAND (stmt, 0);
      else
 return stmt;

    case 133:
      return COND_EXPR_COND (stmt);
    case 128:
      return SWITCH_COND (stmt);
    case 132:
      return GOTO_DESTINATION (stmt);
    case 131:
      return LABEL_EXPR_LABEL (stmt);

    default:
      return stmt;
    }
}
