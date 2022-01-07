
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {scalar_t__ reg_save_b0; scalar_t__ total_size; int mask; scalar_t__ spill_size; scalar_t__ spill_cfa_off; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 unsigned int BR_REG (int ) ;
 scalar_t__ CONST_OK_FOR_I (scalar_t__) ;
 int DImode ;
 int GEN_INT (scalar_t__) ;
 unsigned int GR_REG (int) ;
 int Pmode ;
 scalar_t__ TEST_HARD_REG_BIT (int ,unsigned int) ;
 TYPE_1__ current_frame_info ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 scalar_t__ frame_pointer_needed ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int ,unsigned int) ;
 int hard_frame_pointer_rtx ;
 int stack_pointer_rtx ;

void
ia64_split_return_addr_rtx (rtx dest)
{
  rtx src;

  if (TEST_HARD_REG_BIT (current_frame_info.mask, BR_REG (0)))
    {
      if (current_frame_info.reg_save_b0 != 0)
 src = gen_rtx_REG (DImode, current_frame_info.reg_save_b0);
      else
 {
   HOST_WIDE_INT off;
   unsigned int regno;



   off = (current_frame_info.spill_cfa_off
   + current_frame_info.spill_size);
   for (regno = GR_REG (1); regno <= GR_REG (31); ++regno)
     if (TEST_HARD_REG_BIT (current_frame_info.mask, regno))
       off -= 8;


   if (frame_pointer_needed)
     src = hard_frame_pointer_rtx;
   else
     {
       src = stack_pointer_rtx;
       off += current_frame_info.total_size;
     }


   if (CONST_OK_FOR_I (off))
     emit_insn (gen_adddi3 (dest, src, GEN_INT (off)));
   else
     {
       emit_move_insn (dest, GEN_INT (off));
       emit_insn (gen_adddi3 (dest, src, dest));
     }

   src = gen_rtx_MEM (Pmode, dest);
 }
    }
  else
    src = gen_rtx_REG (DImode, BR_REG (0));

  emit_move_insn (dest, src);
}
