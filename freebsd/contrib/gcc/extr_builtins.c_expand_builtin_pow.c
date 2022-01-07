
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;
typedef int HOST_WIDE_INT ;


 int NULL_RTX ;
 scalar_t__ POWI_MAX_MULTS ;
 scalar_t__ REAL_CST ;
 int REAL_TYPE ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_REAL_CST (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int expand_builtin_mathfn_2 (int ,int ,int ) ;
 int expand_expr (int ,int ,int ,int ) ;
 int expand_powi (int ,int,int) ;
 scalar_t__ flag_unsafe_math_optimizations ;
 int force_reg (int,int ) ;
 int optimize_size ;
 scalar_t__ powi_cost (int) ;
 int real_from_integer (int *,int ,int,int,int ) ;
 scalar_t__ real_identical (int *,int *) ;
 int real_to_integer (int *) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_pow (tree exp, rtx target, rtx subtarget)
{
  tree arglist = TREE_OPERAND (exp, 1);
  tree arg0, arg1;

  if (! validate_arglist (arglist, REAL_TYPE, REAL_TYPE, VOID_TYPE))
    return 0;

  arg0 = TREE_VALUE (arglist);
  arg1 = TREE_VALUE (TREE_CHAIN (arglist));

  if (TREE_CODE (arg1) == REAL_CST
      && ! TREE_CONSTANT_OVERFLOW (arg1))
    {
      REAL_VALUE_TYPE cint;
      REAL_VALUE_TYPE c;
      HOST_WIDE_INT n;

      c = TREE_REAL_CST (arg1);
      n = real_to_integer (&c);
      real_from_integer (&cint, VOIDmode, n, n < 0 ? -1 : 0, 0);
      if (real_identical (&c, &cint))
 {



   if ((n >= -1 && n <= 2)
       || (flag_unsafe_math_optimizations
    && ! optimize_size
    && powi_cost (n) <= POWI_MAX_MULTS))
     {
       enum machine_mode mode = TYPE_MODE (TREE_TYPE (exp));
       rtx op = expand_expr (arg0, subtarget, VOIDmode, 0);
       op = force_reg (mode, op);
       return expand_powi (op, mode, n);
     }
 }
    }

  if (! flag_unsafe_math_optimizations)
    return NULL_RTX;
  return expand_builtin_mathfn_2 (exp, target, subtarget);
}
