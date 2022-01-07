
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 int BINFO_OFFSET (int ) ;
 int BINFO_TYPE (int ) ;
 int INDIRECT_REF ;
 int PLUS_EXPR ;
 int SAME_BINFO_TYPE_P (int ,int ) ;
 int TREE_TYPE (int ) ;
 int build1 (int ,int ,int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build_nop (int ,int ) ;
 int build_pointer_type (int ) ;
 int build_unary_op (int ,int ,int) ;
 int integer_zerop (int ) ;

tree
convert_to_base_statically (tree expr, tree base)
{
  tree expr_type;

  expr_type = TREE_TYPE (expr);
  if (!SAME_BINFO_TYPE_P (BINFO_TYPE (base), expr_type))
    {
      tree pointer_type;

      pointer_type = build_pointer_type (expr_type);
      expr = build_unary_op (ADDR_EXPR, expr, 1);
      if (!integer_zerop (BINFO_OFFSET (base)))
   expr = build2 (PLUS_EXPR, pointer_type, expr,
    build_nop (pointer_type, BINFO_OFFSET (base)));
      expr = build_nop (build_pointer_type (BINFO_TYPE (base)), expr);
      expr = build1 (INDIRECT_REF, BINFO_TYPE (base), expr);
    }

  return expr;
}
