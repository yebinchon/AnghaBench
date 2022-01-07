
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ DImode ;
 int GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int PUT_CODE (scalar_t__,int ) ;
 int PUT_MODE (scalar_t__,scalar_t__) ;
 scalar_t__ QImode ;
 int REG_EQUAL ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TImode ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int gcc_assert (int) ;
 int gen_andqi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_iorqi3 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (scalar_t__) ;
 int gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 int get_last_insn () ;
 scalar_t__ ix86_compare_op0 ;
 scalar_t__ ix86_compare_op1 ;
 scalar_t__ ix86_expand_compare (int,scalar_t__*,scalar_t__*) ;
 int reverse_condition_maybe_unordered (int ) ;
 int set_unique_reg_note (int ,int ,scalar_t__) ;
 scalar_t__ simplify_gen_relational (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

int
ix86_expand_setcc (enum rtx_code code, rtx dest)
{
  rtx ret, tmp, tmpreg, equiv;
  rtx second_test, bypass_test;

  if (GET_MODE (ix86_compare_op0) == (TARGET_64BIT ? TImode : DImode))
    return 0;

  gcc_assert (GET_MODE (dest) == QImode);

  ret = ix86_expand_compare (code, &second_test, &bypass_test);
  PUT_MODE (ret, QImode);

  tmp = dest;
  tmpreg = dest;

  emit_insn (gen_rtx_SET (VOIDmode, tmp, ret));
  if (bypass_test || second_test)
    {
      rtx test = second_test;
      int bypass = 0;
      rtx tmp2 = gen_reg_rtx (QImode);
      if (bypass_test)
 {
   gcc_assert (!second_test);
   test = bypass_test;
   bypass = 1;
   PUT_CODE (test, reverse_condition_maybe_unordered (GET_CODE (test)));
 }
      PUT_MODE (test, QImode);
      emit_insn (gen_rtx_SET (VOIDmode, tmp2, test));

      if (bypass)
 emit_insn (gen_andqi3 (tmp, tmpreg, tmp2));
      else
 emit_insn (gen_iorqi3 (tmp, tmpreg, tmp2));
    }


  if (ix86_compare_op0 && ix86_compare_op1)
    {
      equiv = simplify_gen_relational (code, QImode,
           GET_MODE (ix86_compare_op0),
           ix86_compare_op0, ix86_compare_op1);
      set_unique_reg_note (get_last_insn (), REG_EQUAL, equiv);
    }

  return 1;
}
