
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 scalar_t__ ERROR_MARK ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ GET_MODE_BITSIZE (int) ;
 scalar_t__ HAVE_canonicalize_funcptr_for_compare ;
 scalar_t__ INTEGER_CST ;
 int NULL_RTX ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int do_compare_rtx_and_jump (int ,int ,int,int,int,int ,int ,int ) ;
 int emit_insn (int ) ;
 int expand_normal (int ) ;
 int expr_size (int ) ;
 int gen_canonicalize_funcptr_for_compare (int ,int ) ;
 int gen_reg_rtx (int) ;

__attribute__((used)) static void
do_compare_and_jump (tree exp, enum rtx_code signed_code,
       enum rtx_code unsigned_code, rtx if_false_label,
       rtx if_true_label)
{
  rtx op0, op1;
  tree type;
  enum machine_mode mode;
  int unsignedp;
  enum rtx_code code;


  op0 = expand_normal (TREE_OPERAND (exp, 0));
  if (TREE_CODE (TREE_OPERAND (exp, 0)) == ERROR_MARK)
    return;

  op1 = expand_normal (TREE_OPERAND (exp, 1));
  if (TREE_CODE (TREE_OPERAND (exp, 1)) == ERROR_MARK)
    return;

  type = TREE_TYPE (TREE_OPERAND (exp, 0));
  mode = TYPE_MODE (type);
  if (TREE_CODE (TREE_OPERAND (exp, 0)) == INTEGER_CST
      && (TREE_CODE (TREE_OPERAND (exp, 1)) != INTEGER_CST
          || (GET_MODE_BITSIZE (mode)
              > GET_MODE_BITSIZE (TYPE_MODE (TREE_TYPE (TREE_OPERAND (exp,
                                                                      1)))))))
    {


      type = TREE_TYPE (TREE_OPERAND (exp, 1));
      mode = TYPE_MODE (type);
    }
  unsignedp = TYPE_UNSIGNED (type);
  code = unsignedp ? unsigned_code : signed_code;
  do_compare_rtx_and_jump (op0, op1, code, unsignedp, mode,
                           ((mode == BLKmode)
                            ? expr_size (TREE_OPERAND (exp, 0)) : NULL_RTX),
                           if_false_label, if_true_label);
}
