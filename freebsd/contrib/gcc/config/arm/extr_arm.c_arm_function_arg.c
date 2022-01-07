
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ named_count; scalar_t__ nargs; int iwmmxt_nregs; int can_split; int nregs; int call_cookie; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 scalar_t__ ARM_DOUBLEWORD_ALIGN ;
 int ARM_NUM_REGS2 (int,int ) ;
 int FIRST_IWMMXT_REGNUM ;
 int GEN_INT (int ) ;
 int NULL_RTX ;
 int NUM_ARG_REGS ;
 scalar_t__ TARGET_IWMMXT_ABI ;
 int VOIDmode ;
 scalar_t__ arm_needs_doubleword_align (int,int ) ;
 scalar_t__ arm_vector_mode_supported_p (int) ;
 int gen_rtx_REG (int,int) ;

rtx
arm_function_arg (CUMULATIVE_ARGS *pcum, enum machine_mode mode,
    tree type, int named)
{
  int nregs;



  if (TARGET_IWMMXT_ABI
      && arm_vector_mode_supported_p (mode)
      && pcum->named_count > pcum->nargs + 1)
    {
      if (pcum->iwmmxt_nregs <= 9)
 return gen_rtx_REG (mode, pcum->iwmmxt_nregs + FIRST_IWMMXT_REGNUM);
      else
 {
   pcum->can_split = 0;
   return NULL_RTX;
 }
    }


  if (pcum->nregs & 1
      && ARM_DOUBLEWORD_ALIGN
      && arm_needs_doubleword_align (mode, type))
    pcum->nregs++;

  if (mode == VOIDmode)

    return GEN_INT (pcum->call_cookie);




  if (pcum->can_split)
    nregs = 1;
  else
    nregs = ARM_NUM_REGS2 (mode, type);

  if (!named || pcum->nregs + nregs > NUM_ARG_REGS)
    return NULL_RTX;

  return gen_rtx_REG (mode, pcum->nregs);
}
