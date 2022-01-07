
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int TREE_SIDE_EFFECTS ;


 scalar_t__ NOP_EXPR ;
 scalar_t__ REFERENCE_TYPE ;
 int STATIC_CAST_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ build_min (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_static_cast_1 (scalar_t__,scalar_t__,int,int*) ;
 scalar_t__ convert_from_reference (int) ;
 int error (char*,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ processing_template_decl ;

tree
build_static_cast (tree type, tree expr)
{
  tree result;
  bool valid_p;

  if (type == error_mark_node || expr == error_mark_node)
    return error_mark_node;

  if (processing_template_decl)
    {
      expr = build_min (STATIC_CAST_EXPR, type, expr);

      TREE_SIDE_EFFECTS (expr) = 1;
      return convert_from_reference (expr);
    }



  if (TREE_CODE (type) != REFERENCE_TYPE
      && TREE_CODE (expr) == NOP_EXPR
      && TREE_TYPE (expr) == TREE_TYPE (TREE_OPERAND (expr, 0)))
    expr = TREE_OPERAND (expr, 0);

  result = build_static_cast_1 (type, expr, 0, &valid_p);
  if (valid_p)
    return result;

  error ("invalid static_cast from type %qT to type %qT",
  TREE_TYPE (expr), type);
  return error_mark_node;
}
