
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int libfunc; } ;
typedef int HOST_WIDE_INT ;


 int GET_MODE (int ) ;
 scalar_t__ INTEGER_CST ;
 int INTEGER_TYPE ;
 int INT_TYPE_SIZE ;
 int LCT_CONST_MAKE_BLOCK ;
 int MODE_INT ;
 int NULL_RTX ;
 scalar_t__ POWI_MAX_MULTS ;
 int REAL_TYPE ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int convert_to_mode (int,int ,int ) ;
 int emit_library_call_value (int ,int ,int ,int,int,int ,int,int ,int) ;
 int expand_expr (int ,int ,int,int ) ;
 int expand_powi (int ,int,int) ;
 int force_reg (int,int ) ;
 int gen_reg_rtx (int) ;
 int mode_for_size (int ,int ,int ) ;
 int optimize_size ;
 scalar_t__ powi_cost (int) ;
 TYPE_2__* powi_optab ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_powi (tree exp, rtx target, rtx subtarget)
{
  tree arglist = TREE_OPERAND (exp, 1);
  tree arg0, arg1;
  rtx op0, op1;
  enum machine_mode mode;
  enum machine_mode mode2;

  if (! validate_arglist (arglist, REAL_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  arg0 = TREE_VALUE (arglist);
  arg1 = TREE_VALUE (TREE_CHAIN (arglist));
  mode = TYPE_MODE (TREE_TYPE (exp));



  if (TREE_CODE (arg1) == INTEGER_CST
      && ! TREE_CONSTANT_OVERFLOW (arg1))
    {
      HOST_WIDE_INT n = TREE_INT_CST_LOW (arg1);



      if ((TREE_INT_CST_HIGH (arg1) == 0
    || TREE_INT_CST_HIGH (arg1) == -1)
   && ((n >= -1 && n <= 2)
       || (! optimize_size
    && powi_cost (n) <= POWI_MAX_MULTS)))
 {
   op0 = expand_expr (arg0, subtarget, VOIDmode, 0);
   op0 = force_reg (mode, op0);
   return expand_powi (op0, mode, n);
 }
    }




  mode2 = mode_for_size (INT_TYPE_SIZE, MODE_INT, 0);

  if (target == NULL_RTX)
    target = gen_reg_rtx (mode);

  op0 = expand_expr (arg0, subtarget, mode, 0);
  if (GET_MODE (op0) != mode)
    op0 = convert_to_mode (mode, op0, 0);
  op1 = expand_expr (arg1, 0, mode2, 0);
  if (GET_MODE (op1) != mode2)
    op1 = convert_to_mode (mode2, op1, 0);

  target = emit_library_call_value (powi_optab->handlers[(int) mode].libfunc,
        target, LCT_CONST_MAKE_BLOCK, mode, 2,
        op0, mode, op1, mode2);

  return target;
}
