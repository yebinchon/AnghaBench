
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* stmt_ann_t ;
struct TYPE_3__ {scalar_t__ has_volatile_ops; } ;


 scalar_t__ MODIFY_EXPR ;
 scalar_t__ PHI_NODE ;
 int PHI_RESULT (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_OCCURS_IN_ABNORMAL_PHI (int ) ;
 int SSA_OP_ALL_VIRTUALS ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int ZERO_SSA_OPERANDS (int ,int ) ;
 scalar_t__ do_store_copy_prop ;
 TYPE_1__* stmt_ann (int ) ;

__attribute__((used)) static bool
stmt_may_generate_copy (tree stmt)
{
  tree lhs, rhs;
  stmt_ann_t ann;

  if (TREE_CODE (stmt) == PHI_NODE)
    return !SSA_NAME_OCCURS_IN_ABNORMAL_PHI (PHI_RESULT (stmt));

  if (TREE_CODE (stmt) != MODIFY_EXPR)
    return 0;

  lhs = TREE_OPERAND (stmt, 0);
  rhs = TREE_OPERAND (stmt, 1);
  ann = stmt_ann (stmt);



  if (ann->has_volatile_ops)
    return 0;



  if (!do_store_copy_prop
      && !ZERO_SSA_OPERANDS (stmt, SSA_OP_ALL_VIRTUALS))
    return 0;




  return (do_store_copy_prop
   && TREE_CODE (lhs) == SSA_NAME)
  || (TREE_CODE (rhs) == SSA_NAME
      && !SSA_NAME_OCCURS_IN_ABNORMAL_PHI (rhs));
}
