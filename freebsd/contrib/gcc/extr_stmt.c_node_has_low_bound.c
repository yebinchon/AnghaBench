
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* case_node_ptr ;
struct TYPE_3__ {int high; struct TYPE_3__* parent; int low; scalar_t__ left; } ;


 int MINUS_EXPR ;
 int TREE_TYPE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int build_int_cst (int ,int) ;
 int fold_build2 (int ,int ,int ,int ) ;
 scalar_t__ tree_int_cst_equal (int ,int ) ;
 int tree_int_cst_lt (int ,int ) ;

__attribute__((used)) static int
node_has_low_bound (case_node_ptr node, tree index_type)
{
  tree low_minus_one;
  case_node_ptr pnode;




  if (tree_int_cst_equal (node->low, TYPE_MIN_VALUE (index_type)))
    return 1;





  if (node->left)
    return 0;

  low_minus_one = fold_build2 (MINUS_EXPR, TREE_TYPE (node->low),
          node->low,
          build_int_cst (TREE_TYPE (node->low), 1));




  if (! tree_int_cst_lt (low_minus_one, node->low))
    return 0;

  for (pnode = node->parent; pnode; pnode = pnode->parent)
    if (tree_int_cst_equal (low_minus_one, pnode->high))
      return 1;

  return 0;
}
