
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARM_FT_FIQ ;
 scalar_t__ ARM_FUNC_TYPE (unsigned long) ;
 unsigned int EH_RETURN_DATA_REGNO (unsigned int) ;
 size_t HARD_FRAME_POINTER_REGNUM ;
 unsigned int INVALID_REGNUM ;
 scalar_t__ IS_INTERRUPT (unsigned long) ;
 int PIC_OFFSET_TABLE_REGNUM ;
 int TARGET_APCS_FRAME ;
 int TARGET_SINGLE_PIC_BASE ;
 unsigned long arm_current_func_type () ;
 unsigned int arm_pic_register ;
 scalar_t__* call_used_regs ;
 scalar_t__ current_function_calls_eh_return ;
 int current_function_is_leaf ;
 scalar_t__ current_function_uses_pic_offset_table ;
 scalar_t__ flag_pic ;
 int frame_pointer_needed ;
 scalar_t__* regs_ever_live ;

__attribute__((used)) static unsigned long
arm_compute_save_reg0_reg12_mask (void)
{
  unsigned long func_type = arm_current_func_type ();
  unsigned long save_reg_mask = 0;
  unsigned int reg;

  if (IS_INTERRUPT (func_type))
    {
      unsigned int max_reg;






      if (ARM_FUNC_TYPE (func_type) == ARM_FT_FIQ)





 max_reg = 7;
      else
 max_reg = 12;

      for (reg = 0; reg <= max_reg; reg++)
 if (regs_ever_live[reg]
     || (! current_function_is_leaf && call_used_regs [reg]))
   save_reg_mask |= (1 << reg);


      if (flag_pic
   && !TARGET_SINGLE_PIC_BASE
   && arm_pic_register != INVALID_REGNUM
   && current_function_uses_pic_offset_table)
 save_reg_mask |= 1 << PIC_OFFSET_TABLE_REGNUM;
    }
  else
    {


      for (reg = 0; reg <= 10; reg++)
 if (regs_ever_live[reg] && ! call_used_regs [reg])
   save_reg_mask |= (1 << reg);


      if (! TARGET_APCS_FRAME
   && ! frame_pointer_needed
   && regs_ever_live[HARD_FRAME_POINTER_REGNUM]
   && ! call_used_regs[HARD_FRAME_POINTER_REGNUM])
 save_reg_mask |= 1 << HARD_FRAME_POINTER_REGNUM;



      if (flag_pic
   && !TARGET_SINGLE_PIC_BASE
   && arm_pic_register != INVALID_REGNUM
   && (regs_ever_live[PIC_OFFSET_TABLE_REGNUM]
       || current_function_uses_pic_offset_table))
 save_reg_mask |= 1 << PIC_OFFSET_TABLE_REGNUM;
    }


  if (current_function_calls_eh_return)
    {
      unsigned int i;

      for (i = 0; ; i++)
 {
   reg = EH_RETURN_DATA_REGNO (i);
   if (reg == INVALID_REGNUM)
     break;
   save_reg_mask |= 1 << reg;
 }
    }

  return save_reg_mask;
}
