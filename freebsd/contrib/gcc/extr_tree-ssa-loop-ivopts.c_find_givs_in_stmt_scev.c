
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct loop {int dummy; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct TYPE_4__ {void* step; void* base; } ;
typedef TYPE_1__ affine_iv ;


 scalar_t__ MODIFY_EXPR ;
 void* NULL_TREE ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 scalar_t__ contains_abnormal_ssa_name_p (void*) ;
 void* expand_simple_operations (void*) ;
 int simple_iv (struct loop*,int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static bool
find_givs_in_stmt_scev (struct ivopts_data *data, tree stmt, affine_iv *iv)
{
  tree lhs;
  struct loop *loop = data->current_loop;

  iv->base = NULL_TREE;
  iv->step = NULL_TREE;

  if (TREE_CODE (stmt) != MODIFY_EXPR)
    return 0;

  lhs = TREE_OPERAND (stmt, 0);
  if (TREE_CODE (lhs) != SSA_NAME)
    return 0;

  if (!simple_iv (loop, stmt, TREE_OPERAND (stmt, 1), iv, 1))
    return 0;
  iv->base = expand_simple_operations (iv->base);

  if (contains_abnormal_ssa_name_p (iv->base)
      || contains_abnormal_ssa_name_p (iv->step))
    return 0;

  return 1;
}
