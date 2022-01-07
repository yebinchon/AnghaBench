
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* type_for_size ) (scalar_t__,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ BIT_AND_EXPR ;
 scalar_t__ CONVERT_EXPR ;
 scalar_t__ INTEGER_CST ;
 int INTEGRAL_TYPE_P (scalar_t__) ;
 int LSHIFT_EXPR ;
 scalar_t__ NON_LVALUE_EXPR ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ PLACEHOLDER_EXPR ;
 int RSHIFT_EXPR ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int) ;
 scalar_t__ const_binop (int ,scalar_t__,int ,int ) ;
 scalar_t__ fold_build2 (scalar_t__,scalar_t__,int ,scalar_t__) ;
 int fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ force_fit_type (scalar_t__,int ,int,int) ;
 scalar_t__ get_inner_reference (scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,int*,int*,int*,int) ;
 TYPE_2__ lang_hooks ;
 int size_int (scalar_t__) ;
 scalar_t__ stub1 (scalar_t__,int) ;

__attribute__((used)) static tree
decode_field_reference (tree exp, HOST_WIDE_INT *pbitsize,
   HOST_WIDE_INT *pbitpos, enum machine_mode *pmode,
   int *punsignedp, int *pvolatilep,
   tree *pmask, tree *pand_mask)
{
  tree outer_type = 0;
  tree and_mask = 0;
  tree mask, inner, offset;
  tree unsigned_type;
  unsigned int precision;




  if (! INTEGRAL_TYPE_P (TREE_TYPE (exp)))
    return 0;




  if (TREE_CODE (exp) == NOP_EXPR
      || TREE_CODE (exp) == CONVERT_EXPR
      || TREE_CODE (exp) == NON_LVALUE_EXPR)
    outer_type = TREE_TYPE (exp);
  STRIP_NOPS (exp);

  if (TREE_CODE (exp) == BIT_AND_EXPR)
    {
      and_mask = TREE_OPERAND (exp, 1);
      exp = TREE_OPERAND (exp, 0);
      STRIP_NOPS (exp); STRIP_NOPS (and_mask);
      if (TREE_CODE (and_mask) != INTEGER_CST)
 return 0;
    }

  inner = get_inner_reference (exp, pbitsize, pbitpos, &offset, pmode,
          punsignedp, pvolatilep, 0);
  if ((inner == exp && and_mask == 0)
      || *pbitsize < 0 || offset != 0
      || TREE_CODE (inner) == PLACEHOLDER_EXPR)
    return 0;




  if (outer_type && *pbitsize == TYPE_PRECISION (outer_type))
    *punsignedp = TYPE_UNSIGNED (outer_type);


  unsigned_type = lang_hooks.types.type_for_size (*pbitsize, 1);
  precision = TYPE_PRECISION (unsigned_type);

  mask = build_int_cst (unsigned_type, -1);
  mask = force_fit_type (mask, 0, 0, 0);

  mask = const_binop (LSHIFT_EXPR, mask, size_int (precision - *pbitsize), 0);
  mask = const_binop (RSHIFT_EXPR, mask, size_int (precision - *pbitsize), 0);


  if (and_mask != 0)
    mask = fold_build2 (BIT_AND_EXPR, unsigned_type,
   fold_convert (unsigned_type, and_mask), mask);

  *pmask = mask;
  *pand_mask = and_mask;
  return inner;
}
