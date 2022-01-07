
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _Unwind_Context {unsigned long* pfs_loc; unsigned long bsp; scalar_t__ psp; scalar_t__ sp; } ;
struct TYPE_8__ {TYPE_1__* reg; } ;
struct TYPE_9__ {scalar_t__ when_target; int no_reg_stack_frame; TYPE_2__ curr; } ;
typedef TYPE_3__ _Unwind_FrameState ;
struct TYPE_7__ {scalar_t__ when; scalar_t__ where; scalar_t__ val; } ;


 int MD_HANDLE_UNWABI (struct _Unwind_Context*,TYPE_3__*) ;
 long UNW_NUM_REGS ;
 long UNW_REG_BSP ;
 size_t UNW_REG_PRI_UNAT_GR ;
 size_t UNW_REG_PRI_UNAT_MEM ;
 size_t UNW_REG_PSP ;
 scalar_t__ UNW_WHERE_NONE ;
 scalar_t__ ia64_rse_skip_regs (unsigned long*,unsigned long) ;
 int uw_update_reg_address (struct _Unwind_Context*,TYPE_3__*,long) ;

__attribute__((used)) static void
uw_update_context (struct _Unwind_Context *context, _Unwind_FrameState *fs)
{
  long i;





  context->sp = context->psp;


  if (fs->when_target > fs->curr.reg[UNW_REG_PSP].when)
    {
      if (fs->curr.reg[UNW_REG_PSP].where == UNW_WHERE_NONE)
 context->psp = context->psp + fs->curr.reg[UNW_REG_PSP].val;
      else
 uw_update_reg_address (context, fs, UNW_REG_PSP);
    }


  {
    int i;
    if (fs->when_target < fs->curr.reg[UNW_REG_PRI_UNAT_GR].when)
      i = UNW_REG_PRI_UNAT_MEM;
    else if (fs->when_target < fs->curr.reg[UNW_REG_PRI_UNAT_MEM].when)
      i = UNW_REG_PRI_UNAT_GR;
    else if (fs->curr.reg[UNW_REG_PRI_UNAT_MEM].when
      > fs->curr.reg[UNW_REG_PRI_UNAT_GR].when)
      i = UNW_REG_PRI_UNAT_MEM;
    else
      i = UNW_REG_PRI_UNAT_GR;
    uw_update_reg_address (context, fs, i);
  }


  for (i = UNW_REG_BSP; i < UNW_NUM_REGS; ++i)
    uw_update_reg_address (context, fs, i);






  if (!(fs -> no_reg_stack_frame))
    {
      unsigned long pfs = *context->pfs_loc;
      unsigned long sol = (pfs >> 7) & 0x7f;
      context->bsp = (unsigned long)
 ia64_rse_skip_regs ((unsigned long *) context->bsp, -sol);
    }
}
