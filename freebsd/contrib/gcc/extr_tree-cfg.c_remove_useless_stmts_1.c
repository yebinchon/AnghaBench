
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
struct rus_data {int may_branch; int may_throw; int * last_goto; } ;







 int IS_EMPTY_STMT (int ) ;




 int const TREE_CODE (int ) ;


 int TSI_SAME_STMT ;
 int fold_stmt (int *) ;
 int get_call_expr_in (int ) ;
 int notice_special_calls (int ) ;
 int remove_useless_stmts_bind (int *,struct rus_data*) ;
 int remove_useless_stmts_cond (int *,struct rus_data*) ;
 int remove_useless_stmts_goto (int *,struct rus_data*) ;
 int remove_useless_stmts_label (int *,struct rus_data*) ;
 int remove_useless_stmts_tc (int *,struct rus_data*) ;
 int remove_useless_stmts_tf (int *,struct rus_data*) ;
 int tree_could_throw_p (int ) ;
 int tsi_delink (int *) ;
 int tsi_end_p (int ) ;
 int tsi_link_before (int *,int ,int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;
 int * tsi_stmt_ptr (int ) ;
 int update_call_expr_flags (int ) ;

__attribute__((used)) static void
remove_useless_stmts_1 (tree *tp, struct rus_data *data)
{
  tree t = *tp, op;

  switch (TREE_CODE (t))
    {
    case 135:
      remove_useless_stmts_cond (tp, data);
      break;

    case 128:
      remove_useless_stmts_tf (tp, data);
      break;

    case 129:
      remove_useless_stmts_tc (tp, data);
      break;

    case 137:
      remove_useless_stmts_bind (tp, data);
      break;

    case 134:
      remove_useless_stmts_goto (tp, data);
      break;

    case 133:
      remove_useless_stmts_label (tp, data);
      break;

    case 131:
      fold_stmt (tp);
      data->last_goto = ((void*)0);
      data->may_branch = 1;
      break;

    case 136:
      fold_stmt (tp);
      data->last_goto = ((void*)0);
      notice_special_calls (t);
      update_call_expr_flags (t);
      if (tree_could_throw_p (t))
 data->may_throw = 1;
      break;

    case 132:
      data->last_goto = ((void*)0);
      fold_stmt (tp);
      op = get_call_expr_in (t);
      if (op)
 {
   update_call_expr_flags (op);
   notice_special_calls (op);
 }
      if (tree_could_throw_p (t))
 data->may_throw = 1;
      break;

    case 130:
      {
 tree_stmt_iterator i = tsi_start (t);
 while (!tsi_end_p (i))
   {
     t = tsi_stmt (i);
     if (IS_EMPTY_STMT (t))
       {
  tsi_delink (&i);
  continue;
       }

     remove_useless_stmts_1 (tsi_stmt_ptr (i), data);

     t = tsi_stmt (i);
     if (TREE_CODE (t) == 130)
       {
  tsi_link_before (&i, t, TSI_SAME_STMT);
  tsi_delink (&i);
       }
     else
       tsi_next (&i);
   }
      }
      break;
    case 138:
      fold_stmt (tp);
      data->last_goto = ((void*)0);
      break;

    default:
      data->last_goto = ((void*)0);
      break;
    }
}
