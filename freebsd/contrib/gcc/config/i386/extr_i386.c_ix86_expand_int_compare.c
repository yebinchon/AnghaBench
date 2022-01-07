
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int FLAGS_REG ;
 int SELECT_CC_MODE (int,int ,int ) ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int gen_rtx_COMPARE (int,int ,int ) ;
 int gen_rtx_REG (int,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;

__attribute__((used)) static rtx
ix86_expand_int_compare (enum rtx_code code, rtx op0, rtx op1)
{
  enum machine_mode cmpmode;
  rtx tmp, flags;

  cmpmode = SELECT_CC_MODE (code, op0, op1);
  flags = gen_rtx_REG (cmpmode, FLAGS_REG);



  tmp = gen_rtx_COMPARE (cmpmode, op0, op1);
  emit_insn (gen_rtx_SET (VOIDmode, flags, tmp));



  return gen_rtx_fmt_ee (code, VOIDmode, flags, const0_rtx);
}
