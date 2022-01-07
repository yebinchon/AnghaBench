
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* case_node_ptr ;
struct TYPE_3__ {int * low; struct TYPE_3__* parent; int high; scalar_t__ right; } ;


 int PLUS_EXPR ;
 int TREE_TYPE (int ) ;
 int * TYPE_MAX_VALUE (int ) ;
 int build_int_cst (int ,int) ;
 int fold_build2 (int ,int ,int ,int ) ;
 scalar_t__ tree_int_cst_equal (int ,int *) ;
 int tree_int_cst_lt (int ,int ) ;

__attribute__((used)) static int
node_has_high_bound (case_node_ptr node, tree index_type)
{
  tree high_plus_one;
  case_node_ptr pnode;



  if (TYPE_MAX_VALUE (index_type) == ((void*)0))
    return 1;




  if (tree_int_cst_equal (node->high, TYPE_MAX_VALUE (index_type)))
    return 1;





  if (node->right)
    return 0;

  high_plus_one = fold_build2 (PLUS_EXPR, TREE_TYPE (node->high),
          node->high,
          build_int_cst (TREE_TYPE (node->high), 1));




  if (! tree_int_cst_lt (node->high, high_plus_one))
    return 0;

  for (pnode = node->parent; pnode; pnode = pnode->parent)
    if (tree_int_cst_equal (high_plus_one, pnode->low))
      return 1;

  return 0;
}
