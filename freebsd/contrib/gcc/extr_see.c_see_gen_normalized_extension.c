
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int *) ;
 int REG_P (int *) ;
 int SIGN_EXTEND ;
 int VOIDmode ;
 int ZERO_EXTEND ;
 int emit_insn (int ) ;
 int end_sequence () ;
 int * gen_lowpart_SUBREG (int,int *) ;
 int gen_rtx_SET (int ,int *,int *) ;
 int * gen_rtx_SIGN_EXTEND (int ,int *) ;
 int * gen_rtx_ZERO_EXTEND (int ,int *) ;
 int * get_insns () ;
 scalar_t__ insn_invalid_p (int *) ;
 int start_sequence () ;

__attribute__((used)) static rtx
see_gen_normalized_extension (rtx reg, enum rtx_code extension_code,
            enum machine_mode mode)
{
  rtx subreg, insn;
  rtx extension = ((void*)0);

  if (!reg
      || !REG_P (reg)
      || (extension_code != SIGN_EXTEND && extension_code != ZERO_EXTEND))
    return ((void*)0);

  subreg = gen_lowpart_SUBREG (mode, reg);
  if (extension_code == SIGN_EXTEND)
    extension = gen_rtx_SIGN_EXTEND (GET_MODE (reg), subreg);
  else
    extension = gen_rtx_ZERO_EXTEND (GET_MODE (reg), subreg);

  start_sequence ();
  emit_insn (gen_rtx_SET (VOIDmode, reg, extension));
  insn = get_insns ();
  end_sequence ();

  if (insn_invalid_p (insn))


    return ((void*)0);
  return insn;
}
