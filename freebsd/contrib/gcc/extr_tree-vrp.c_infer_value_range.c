
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int succs; } ;


 scalar_t__ EDGE_COUNT (int ) ;
 int ERROR_MARK ;
 int NE_EXPR ;
 int NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ SSA_NAME_OCCURS_IN_ABNORMAL_PHI (int ) ;
 int TREE_TYPE (int ) ;
 TYPE_1__* bb_for_stmt (int ) ;
 int build_int_cst (int ,int ) ;
 int count_uses_and_derefs (int ,int ,unsigned int*,unsigned int*,int*) ;
 scalar_t__ flag_delete_null_pointer_checks ;
 scalar_t__ stmt_ends_bb_p (int ) ;
 scalar_t__ tree_could_throw_p (int ) ;

__attribute__((used)) static bool
infer_value_range (tree stmt, tree op, enum tree_code *comp_code_p, tree *val_p)
{
  *val_p = NULL_TREE;
  *comp_code_p = ERROR_MARK;



  if (SSA_NAME_OCCURS_IN_ABNORMAL_PHI (op))
    return 0;



  if (tree_could_throw_p (stmt))
    return 0;





  if (stmt_ends_bb_p (stmt) && EDGE_COUNT (bb_for_stmt (stmt)->succs) == 0)
    return 0;



  if (flag_delete_null_pointer_checks && POINTER_TYPE_P (TREE_TYPE (op)))
    {
      bool is_store;
      unsigned num_uses, num_derefs;

      count_uses_and_derefs (op, stmt, &num_uses, &num_derefs, &is_store);
      if (num_derefs > 0)
 {
   *val_p = build_int_cst (TREE_TYPE (op), 0);
   *comp_code_p = NE_EXPR;
   return 1;
 }
    }

  return 0;
}
