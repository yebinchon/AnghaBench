
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_RTX_CLASS (int) ;
 scalar_t__ MEM ;
 scalar_t__ RTX_COMM_ARITH ;
 int force_reg (int,int ) ;
 int gen_reg_rtx (int) ;
 scalar_t__ immediate_operand (int ,int) ;
 scalar_t__ rtx_equal_p (int ,int ) ;

rtx
ix86_fixup_binary_operands (enum rtx_code code, enum machine_mode mode,
       rtx operands[])
{
  int matching_memory;
  rtx src1, src2, dst;

  dst = operands[0];
  src1 = operands[1];
  src2 = operands[2];


  if (GET_RTX_CLASS (code) == RTX_COMM_ARITH
      && (rtx_equal_p (dst, src2)
   || immediate_operand (src1, mode)))
    {
      rtx temp = src1;
      src1 = src2;
      src2 = temp;
    }



  matching_memory = 0;
  if (GET_CODE (dst) == MEM)
    {
      if (rtx_equal_p (dst, src1))
 matching_memory = 1;
      else if (GET_RTX_CLASS (code) == RTX_COMM_ARITH
        && rtx_equal_p (dst, src2))
 matching_memory = 2;
      else
 dst = gen_reg_rtx (mode);
    }


  if (GET_CODE (src1) == MEM && GET_CODE (src2) == MEM)
    {
      if (matching_memory != 2)
 src2 = force_reg (mode, src2);
      else
 src1 = force_reg (mode, src1);
    }



  if ((CONSTANT_P (src1)
       || (!matching_memory && GET_CODE (src1) == MEM))
      && GET_RTX_CLASS (code) != RTX_COMM_ARITH)
    src1 = force_reg (mode, src1);

  src1 = operands[1] = src1;
  src2 = operands[2] = src2;
  return dst;
}
