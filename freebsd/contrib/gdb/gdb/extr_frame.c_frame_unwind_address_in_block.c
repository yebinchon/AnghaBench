
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {scalar_t__ level; } ;
typedef int CORE_ADDR ;


 scalar_t__ NORMAL_FRAME ;
 int frame_pc_unwind (struct frame_info*) ;
 scalar_t__ frame_tdep_pc_fixup (int *) ;
 scalar_t__ get_frame_type (struct frame_info*) ;

CORE_ADDR
frame_unwind_address_in_block (struct frame_info *next_frame)
{

  CORE_ADDR pc = frame_pc_unwind (next_frame);

  if ((frame_tdep_pc_fixup != ((void*)0)) && (frame_tdep_pc_fixup(&pc) == 0))
   return pc;
  if (next_frame->level >= 0
      && get_frame_type (next_frame) == NORMAL_FRAME)
    --pc;
  return pc;
}
