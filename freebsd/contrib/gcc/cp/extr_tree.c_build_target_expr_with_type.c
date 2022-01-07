
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASS_TYPE_P (int ) ;
 scalar_t__ COND_EXPR ;
 scalar_t__ CONSTRUCTOR ;
 scalar_t__ TARGET_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_HAS_TRIVIAL_INIT_REF (int ) ;
 scalar_t__ VA_ARG_EXPR ;
 int VOID_TYPE_P (int ) ;
 int force_rvalue (int ) ;
 int force_target_expr (int ,int ) ;
 int gcc_assert (int) ;

tree
build_target_expr_with_type (tree init, tree type)
{
  gcc_assert (!VOID_TYPE_P (type));

  if (TREE_CODE (init) == TARGET_EXPR)
    return init;
  else if (CLASS_TYPE_P (type) && !TYPE_HAS_TRIVIAL_INIT_REF (type)
    && TREE_CODE (init) != COND_EXPR
    && TREE_CODE (init) != CONSTRUCTOR
    && TREE_CODE (init) != VA_ARG_EXPR)





    return force_rvalue (init);

  return force_target_expr (type, init);
}
