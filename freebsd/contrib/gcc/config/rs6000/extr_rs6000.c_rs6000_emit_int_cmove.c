
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CCmode ;
 int GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ SImode ;
 int XEXP (int ,int ) ;
 int emit_insn (int ) ;
 int gen_isel_signed (int ,int ,int ,int ,int ) ;
 int gen_isel_unsigned (int ,int ,int ,int ,int ) ;
 int rs6000_compare_op0 ;
 int rs6000_generate_compare (int ) ;

__attribute__((used)) static int
rs6000_emit_int_cmove (rtx dest, rtx op, rtx true_cond, rtx false_cond)
{
  rtx condition_rtx, cr;


  if (GET_MODE (rs6000_compare_op0) != SImode)
    return 0;




  condition_rtx = rs6000_generate_compare (GET_CODE (op));
  cr = XEXP (condition_rtx, 0);

  if (GET_MODE (cr) == CCmode)
    emit_insn (gen_isel_signed (dest, condition_rtx,
    true_cond, false_cond, cr));
  else
    emit_insn (gen_isel_unsigned (dest, condition_rtx,
      true_cond, false_cond, cr));

  return 1;
}
