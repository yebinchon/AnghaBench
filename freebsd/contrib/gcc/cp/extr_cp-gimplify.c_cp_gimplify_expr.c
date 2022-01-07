
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
struct TYPE_2__ {int stmts_are_full_exprs_p; } ;




 int BASELINK_FUNCTIONS (int ) ;







 int GS_ALL_DONE ;
 int GS_OK ;






 scalar_t__ STATEMENT_CODE_P (int) ;
 int STMT_IS_FULL_EXPR_P (int ) ;


 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;




 int bc_break ;
 int bc_continue ;
 int build_bc_goto (int ) ;
 int build_constructor (int ,int *) ;
 int build_empty_stmt () ;
 int c_gimplify_expr (int *,int *,int *) ;
 int cp_gimplify_init_expr (int *,int *,int *) ;
 int cp_gimplify_omp_for (int *) ;
 int cplus_expand_constant (int ) ;
 TYPE_1__* current_stmt_tree () ;
 int fold_convert (int ,int ) ;
 int genericize_catch_block (int *) ;
 int genericize_eh_spec_block (int *) ;
 int genericize_try_block (int *) ;
 int gimplify_do_stmt (int *) ;
 int gimplify_expr_stmt (int *) ;
 int gimplify_for_stmt (int *,int *) ;
 int gimplify_if_stmt (int *) ;
 int gimplify_must_not_throw_expr (int *,int *) ;
 int gimplify_switch_stmt (int *) ;
 int gimplify_while_stmt (int *) ;
 int simplify_aggr_init_expr (int *) ;
 int stmts_are_full_exprs_p () ;

int
cp_gimplify_expr (tree *expr_p, tree *pre_p, tree *post_p)
{
  int saved_stmts_are_full_exprs_p = 0;
  enum tree_code code = TREE_CODE (*expr_p);
  enum gimplify_status ret;

  if (STATEMENT_CODE_P (code))
    {
      saved_stmts_are_full_exprs_p = stmts_are_full_exprs_p ();
      current_stmt_tree ()->stmts_are_full_exprs_p
 = STMT_IS_FULL_EXPR_P (*expr_p);
    }

  switch (code)
    {
    case 134:
      *expr_p = cplus_expand_constant (*expr_p);
      ret = GS_OK;
      break;

    case 148:
      simplify_aggr_init_expr (expr_p);
      ret = GS_OK;
      break;

    case 132:


      *expr_p = TREE_OPERAND (*expr_p, 0);
      ret = GS_OK;
      break;

    case 136:
      gimplify_must_not_throw_expr (expr_p, pre_p);
      ret = GS_OK;
      break;




    case 137:
      cp_gimplify_init_expr (expr_p, pre_p, post_p);
      ret = GS_OK;
      break;

    case 142:

      *expr_p = build_constructor (TREE_TYPE (*expr_p), ((void*)0));
      ret = GS_OK;
      break;

    case 147:
      *expr_p = BASELINK_FUNCTIONS (*expr_p);
      ret = GS_OK;
      break;

    case 131:
      genericize_try_block (expr_p);
      ret = GS_OK;
      break;

    case 139:
      genericize_catch_block (expr_p);
      ret = GS_OK;
      break;

    case 143:
      genericize_eh_spec_block (expr_p);
      ret = GS_OK;
      break;

    case 129:


      *expr_p = build_empty_stmt ();
      ret = GS_ALL_DONE;
      break;

    case 138:
      gimplify_if_stmt (expr_p);
      ret = GS_OK;
      break;

    case 140:
      gimplify_for_stmt (expr_p, pre_p);
      ret = GS_ALL_DONE;
      break;

    case 128:
      gimplify_while_stmt (expr_p);
      ret = GS_ALL_DONE;
      break;

    case 144:
      gimplify_do_stmt (expr_p);
      ret = GS_ALL_DONE;
      break;

    case 133:
      gimplify_switch_stmt (expr_p);
      ret = GS_ALL_DONE;
      break;

    case 135:
      ret = cp_gimplify_omp_for (expr_p);
      break;

    case 145:
      *expr_p = build_bc_goto (bc_continue);
      ret = GS_ALL_DONE;
      break;

    case 146:
      *expr_p = build_bc_goto (bc_break);
      ret = GS_ALL_DONE;
      break;

    case 141:
      gimplify_expr_stmt (expr_p);
      ret = GS_OK;
      break;

    case 130:
      {
 tree arg = TREE_OPERAND (*expr_p, 0);
 tree type = TREE_TYPE (*expr_p);
 *expr_p = (TREE_TYPE (arg) != type) ? fold_convert (type, arg)
         : arg;
 ret = GS_OK;
      }
      break;

    default:
      ret = c_gimplify_expr (expr_p, pre_p, post_p);
      break;
    }


  if (STATEMENT_CODE_P (code))
    current_stmt_tree ()->stmts_are_full_exprs_p
      = saved_stmts_are_full_exprs_p;

  return ret;
}
