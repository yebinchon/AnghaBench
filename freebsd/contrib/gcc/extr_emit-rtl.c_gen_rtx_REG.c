
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ emit; } ;


 unsigned int ARG_POINTER_REGNUM ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 unsigned int FRAME_POINTER_REGNUM ;
 unsigned int HARD_FRAME_POINTER_REGNUM ;
 size_t PIC_OFFSET_TABLE_REGNUM ;
 int Pmode ;
 unsigned int RETURN_ADDRESS_POINTER_REGNUM ;
 unsigned int STACK_POINTER_REGNUM ;
 int arg_pointer_rtx ;
 TYPE_1__* cfun ;
 scalar_t__* fixed_regs ;
 scalar_t__ frame_pointer_needed ;
 int frame_pointer_rtx ;
 int gen_raw_REG (int,unsigned int) ;
 int hard_frame_pointer_rtx ;
 int pic_offset_table_rtx ;
 int* reg_raw_mode ;
 int * regno_reg_rtx ;
 int reload_completed ;
 int reload_in_progress ;
 int return_address_pointer_rtx ;
 int stack_pointer_rtx ;

rtx
gen_rtx_REG (enum machine_mode mode, unsigned int regno)
{
  if (mode == Pmode && !reload_in_progress)
    {
      if (regno == FRAME_POINTER_REGNUM
   && (!reload_completed || frame_pointer_needed))
 return frame_pointer_rtx;
      if (regno == (unsigned) PIC_OFFSET_TABLE_REGNUM
   && fixed_regs[PIC_OFFSET_TABLE_REGNUM])
 return pic_offset_table_rtx;
      if (regno == STACK_POINTER_REGNUM)
 return stack_pointer_rtx;
    }
  return gen_raw_REG (mode, regno);
}
