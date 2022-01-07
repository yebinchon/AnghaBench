
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ CALLER_INTERWORKING_SLOT_SIZE ;
 scalar_t__ INVALID_REGNUM ;
 int LAST_LO_REGNUM ;
 int LR_REGNUM ;
 int PIC_OFFSET_TABLE_REGNUM ;
 scalar_t__ TARGET_BACKTRACE ;
 int TARGET_SINGLE_PIC_BASE ;
 scalar_t__ arm_pic_register ;
 int * call_used_regs ;
 scalar_t__ current_function_uses_pic_offset_table ;
 scalar_t__ flag_pic ;
 int frame_pointer_needed ;
 scalar_t__* regs_ever_live ;
 unsigned int thumb_find_work_register (int) ;
 scalar_t__ thumb_force_lr_save () ;

__attribute__((used)) static unsigned long
thumb_compute_save_reg_mask (void)
{
  unsigned long mask;
  unsigned reg;

  mask = 0;
  for (reg = 0; reg < 12; reg ++)
    if (regs_ever_live[reg] && !call_used_regs[reg])
      mask |= 1 << reg;

  if (flag_pic
      && !TARGET_SINGLE_PIC_BASE
      && arm_pic_register != INVALID_REGNUM
      && current_function_uses_pic_offset_table)
    mask |= 1 << PIC_OFFSET_TABLE_REGNUM;


  if (!frame_pointer_needed && CALLER_INTERWORKING_SLOT_SIZE > 0)
    mask |= 1 << ARM_HARD_FRAME_POINTER_REGNUM;


  if (mask & 0xff || thumb_force_lr_save ())
    mask |= (1 << LR_REGNUM);




  if ((mask & 0xff) == 0
      && ((mask & 0x0f00) || TARGET_BACKTRACE))
    {




      reg = thumb_find_work_register (1 << LAST_LO_REGNUM);

      if (! call_used_regs[reg])
 mask |= 1 << reg;
    }

  return mask;
}
