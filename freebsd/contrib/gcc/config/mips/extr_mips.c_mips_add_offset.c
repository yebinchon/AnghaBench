
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ CONST_HIGH_PART (scalar_t__) ;
 scalar_t__ CONST_LOW_PART (scalar_t__) ;
 int GEN_INT (scalar_t__) ;
 int Pmode ;
 int SMALL_OPERAND (scalar_t__) ;
 scalar_t__ TARGET_MIPS16 ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int mips_force_temporary (int ,int ) ;
 int plus_constant (int ,scalar_t__) ;

__attribute__((used)) static rtx
mips_add_offset (rtx temp, rtx reg, HOST_WIDE_INT offset)
{
  if (!SMALL_OPERAND (offset))
    {
      rtx high;
      if (TARGET_MIPS16)
 {


   high = GEN_INT (offset);
   offset = 0;
 }
      else
 {

   high = GEN_INT (CONST_HIGH_PART (offset));
   offset = CONST_LOW_PART (offset);
 }
      high = mips_force_temporary (temp, high);
      reg = mips_force_temporary (temp, gen_rtx_PLUS (Pmode, high, reg));
    }
  return plus_constant (reg, offset);
}
