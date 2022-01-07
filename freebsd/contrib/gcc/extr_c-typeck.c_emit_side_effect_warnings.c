
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ EXPR_HAS_LOCATION (scalar_t__) ;
 int * EXPR_LOCUS (scalar_t__) ;
 int TREE_NO_WARNING (scalar_t__) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int VOID_TYPE_P (int ) ;
 scalar_t__ error_mark_node ;
 int input_location ;
 int warn_if_unused_value (scalar_t__,int ) ;
 scalar_t__ warn_unused_value ;
 int warning (int ,char*,int *) ;

__attribute__((used)) static void
emit_side_effect_warnings (tree expr)
{
  if (expr == error_mark_node)
    ;
  else if (!TREE_SIDE_EFFECTS (expr))
    {
      if (!VOID_TYPE_P (TREE_TYPE (expr)) && !TREE_NO_WARNING (expr))
 warning (0, "%Hstatement with no effect",
   EXPR_HAS_LOCATION (expr) ? EXPR_LOCUS (expr) : &input_location);
    }
  else if (warn_unused_value)
    warn_if_unused_value (expr, input_location);
}
