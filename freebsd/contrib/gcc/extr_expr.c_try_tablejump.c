
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int HAVE_tablejump ;
 int MINUS_EXPR ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int convert_modes (int ,int ,int ,int ) ;
 int do_pending_stack_adjust () ;
 int do_tablejump (int ,int ,int ,int ,int ) ;
 int expand_normal (int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;

int
try_tablejump (tree index_type, tree index_expr, tree minval, tree range,
        rtx table_label, rtx default_label)
{
  rtx index;

  if (! HAVE_tablejump)
    return 0;

  index_expr = fold_build2 (MINUS_EXPR, index_type,
       fold_convert (index_type, index_expr),
       fold_convert (index_type, minval));
  index = expand_normal (index_expr);
  do_pending_stack_adjust ();

  do_tablejump (index, TYPE_MODE (index_type),
  convert_modes (TYPE_MODE (index_type),
          TYPE_MODE (TREE_TYPE (range)),
          expand_normal (range),
          TYPE_UNSIGNED (TREE_TYPE (range))),
  table_label, default_label);
  return 1;
}
