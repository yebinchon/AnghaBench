
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int FP_INC ;
 scalar_t__ FP_RETURN ;
 int GEN_INT (int ) ;
 scalar_t__ TARGET_NEWABI ;
 int VOIDmode ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_EXPR_LIST (int ,int ,int ) ;
 int gen_rtx_PARALLEL (int,int ) ;
 int gen_rtx_REG (int,scalar_t__) ;

__attribute__((used)) static rtx
mips_return_fpr_pair (enum machine_mode mode,
        enum machine_mode mode1, HOST_WIDE_INT offset1,
        enum machine_mode mode2, HOST_WIDE_INT offset2)
{
  int inc;

  inc = (TARGET_NEWABI ? 2 : FP_INC);
  return gen_rtx_PARALLEL
    (mode,
     gen_rtvec (2,
  gen_rtx_EXPR_LIST (VOIDmode,
       gen_rtx_REG (mode1, FP_RETURN),
       GEN_INT (offset1)),
  gen_rtx_EXPR_LIST (VOIDmode,
       gen_rtx_REG (mode2, FP_RETURN + inc),
       GEN_INT (offset2))));

}
