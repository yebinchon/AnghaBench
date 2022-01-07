
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ AND ;
 scalar_t__ GET_CODE (int ) ;
 int SIMPLIFY_TEST_EXP (int ,int,int) ;
 int XEXP (int ,int) ;
 int simplify_and_tree (int ,int *,int,int) ;

__attribute__((used)) static rtx
eliminate_known_true (rtx known_true, rtx exp, int insn_code, int insn_index)
{
  rtx term;

  known_true = SIMPLIFY_TEST_EXP (known_true, insn_code, insn_index);

  if (GET_CODE (known_true) == AND)
    {
      exp = eliminate_known_true (XEXP (known_true, 0), exp,
      insn_code, insn_index);
      exp = eliminate_known_true (XEXP (known_true, 1), exp,
      insn_code, insn_index);
    }
  else
    {
      term = known_true;
      exp = simplify_and_tree (exp, &term, insn_code, insn_index);
    }

  return exp;
}
