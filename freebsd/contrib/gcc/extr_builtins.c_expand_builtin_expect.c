
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;
typedef int NOTE_EXPECTED_VALUE ;


 scalar_t__ CONST_INT ;
 int EXPAND_NORMAL ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ INTEGER_CST ;
 int NOTE_INSN_EXPECTED_VALUE ;
 int NULL_RTX ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_note (int ) ;
 int error (char*) ;
 int expand_expr (scalar_t__,int ,int ,int ) ;
 scalar_t__ flag_guess_branch_prob ;
 int force_reg (int ,int ) ;
 int gen_rtx_EQ (int ,int ,int ) ;
 scalar_t__ integer_zero_node ;

__attribute__((used)) static rtx
expand_builtin_expect (tree arglist, rtx target)
{
  tree exp, c;
  rtx note, rtx_c;

  if (arglist == NULL_TREE
      || TREE_CHAIN (arglist) == NULL_TREE)
    return const0_rtx;
  exp = TREE_VALUE (arglist);
  c = TREE_VALUE (TREE_CHAIN (arglist));

  if (TREE_CODE (c) != INTEGER_CST)
    {
      error ("second argument to %<__builtin_expect%> must be a constant");
      c = integer_zero_node;
    }

  target = expand_expr (exp, target, VOIDmode, EXPAND_NORMAL);


  if (flag_guess_branch_prob && GET_CODE (target) != CONST_INT)
    {



      target = force_reg (GET_MODE (target), target);

      rtx_c = expand_expr (c, NULL_RTX, GET_MODE (target), EXPAND_NORMAL);

      note = emit_note (NOTE_INSN_EXPECTED_VALUE);
      NOTE_EXPECTED_VALUE (note) = gen_rtx_EQ (VOIDmode, target, rtx_c);
    }

  return target;
}
