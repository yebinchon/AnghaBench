
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CC_REGNUM ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int gen_rtx_COMPARE (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_REG (int,int ) ;
 int gen_rtx_SET (int ,scalar_t__,int ) ;
 scalar_t__ gen_rtx_fmt_ee (int,int ,scalar_t__,int ) ;
 scalar_t__ s390_cc_modes_compatible (scalar_t__,int) ;
 scalar_t__ s390_compare_emitted ;
 int s390_select_ccmode (int,scalar_t__,scalar_t__) ;

rtx
s390_emit_compare (enum rtx_code code, rtx op0, rtx op1)
{
  enum machine_mode mode = s390_select_ccmode (code, op0, op1);
  rtx ret = NULL_RTX;



  if (s390_compare_emitted
      && (s390_cc_modes_compatible (GET_MODE (s390_compare_emitted), mode)
   == GET_MODE (s390_compare_emitted)))
    ret = gen_rtx_fmt_ee (code, VOIDmode, s390_compare_emitted, const0_rtx);
  else
    {
      rtx cc = gen_rtx_REG (mode, CC_REGNUM);

      emit_insn (gen_rtx_SET (VOIDmode, cc, gen_rtx_COMPARE (mode, op0, op1)));
      ret = gen_rtx_fmt_ee (code, VOIDmode, cc, const0_rtx);
    }
  s390_compare_emitted = NULL_RTX;
  return ret;
}
