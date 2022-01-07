
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ TREE_SIDE_EFFECTS ;


 int DYNAMIC_CAST_EXPR ;
 int build_dynamic_cast_1 (scalar_t__,scalar_t__) ;
 scalar_t__ build_min (int ,scalar_t__,scalar_t__) ;
 scalar_t__ convert_from_reference (int ) ;
 scalar_t__ error_mark_node ;
 scalar_t__ processing_template_decl ;

tree
build_dynamic_cast (tree type, tree expr)
{
  if (type == error_mark_node || expr == error_mark_node)
    return error_mark_node;

  if (processing_template_decl)
    {
      expr = build_min (DYNAMIC_CAST_EXPR, type, expr);
      TREE_SIDE_EFFECTS (expr) = 1;

      return expr;
    }

  return convert_from_reference (build_dynamic_cast_1 (type, expr));
}
