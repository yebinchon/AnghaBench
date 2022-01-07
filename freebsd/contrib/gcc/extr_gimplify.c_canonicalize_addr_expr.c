
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int (* types_compatible_p ) (int ,int ) ;} ;


 int ADDR_EXPR ;
 int ARRAY_REF ;
 scalar_t__ ARRAY_TYPE ;
 scalar_t__ INTEGER_CST ;
 int NULL_TREE ;
 int POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_DOMAIN (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int TYPE_SIZE_UNIT (int ) ;
 int build1 (int ,int ,int ) ;
 int build4 (int ,int ,int ,int ,int ,int ) ;
 TYPE_1__ lang_hooks ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void
canonicalize_addr_expr (tree *expr_p)
{
  tree expr = *expr_p;
  tree ctype = TREE_TYPE (expr);
  tree addr_expr = TREE_OPERAND (expr, 0);
  tree atype = TREE_TYPE (addr_expr);
  tree dctype, datype, ddatype, otype, obj_expr;


  if (!POINTER_TYPE_P (ctype) || !POINTER_TYPE_P (atype))
    return;


  datype = TREE_TYPE (atype);
  if (TREE_CODE (datype) != ARRAY_TYPE)
    return;


  dctype = TREE_TYPE (ctype);
  ddatype = TREE_TYPE (datype);
  if (!lang_hooks.types_compatible_p (ddatype, dctype))
    return;


  obj_expr = TREE_OPERAND (addr_expr, 0);
  otype = TREE_TYPE (obj_expr);
  if (!lang_hooks.types_compatible_p (otype, datype))
    return;


  if (!TYPE_SIZE_UNIT (dctype)
      || TREE_CODE (TYPE_SIZE_UNIT (dctype)) != INTEGER_CST
      || !TYPE_DOMAIN (datype) || !TYPE_MIN_VALUE (TYPE_DOMAIN (datype))
      || TREE_CODE (TYPE_MIN_VALUE (TYPE_DOMAIN (datype))) != INTEGER_CST)
    return;


  *expr_p = build4 (ARRAY_REF, dctype, obj_expr,
      TYPE_MIN_VALUE (TYPE_DOMAIN (datype)),
      NULL_TREE, NULL_TREE);
  *expr_p = build1 (ADDR_EXPR, ctype, *expr_p);
}
