
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ (* signed_type ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int BIT_AND_EXPR ;
 int BIT_XOR_EXPR ;
 int GET_MODE_BITSIZE (int ) ;
 int LSHIFT_EXPR ;
 int RSHIFT_EXPR ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ const_binop (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ size_int (int) ;
 scalar_t__ stub1 (scalar_t__) ;

__attribute__((used)) static tree
unextend (tree c, int p, int unsignedp, tree mask)
{
  tree type = TREE_TYPE (c);
  int modesize = GET_MODE_BITSIZE (TYPE_MODE (type));
  tree temp;

  if (p == modesize || unsignedp)
    return c;




  temp = const_binop (RSHIFT_EXPR, c, size_int (p - 1), 0);
  temp = const_binop (BIT_AND_EXPR, temp, size_int (1), 0);







  if (TYPE_UNSIGNED (type))
    temp = fold_convert (lang_hooks.types.signed_type (type), temp);

  temp = const_binop (LSHIFT_EXPR, temp, size_int (modesize - 1), 0);
  temp = const_binop (RSHIFT_EXPR, temp, size_int (modesize - p - 1), 0);
  if (mask != 0)
    temp = const_binop (BIT_AND_EXPR, temp,
   fold_convert (TREE_TYPE (c), mask), 0);

  if (TYPE_UNSIGNED (type))
    temp = fold_convert (type, temp);

  return fold_convert (type, const_binop (BIT_XOR_EXPR, c, temp, 0));
}
