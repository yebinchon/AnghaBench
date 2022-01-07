
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {scalar_t__ total_size; scalar_t__ spill_size; scalar_t__ spill_cfa_off; scalar_t__ reg_save_gp; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ CONST_OK_FOR_I (scalar_t__) ;
 int DImode ;
 int GEN_INT (scalar_t__) ;
 TYPE_1__ current_frame_info ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 scalar_t__ frame_pointer_needed ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int ,scalar_t__) ;
 int hard_frame_pointer_rtx ;
 int pic_offset_table_rtx ;
 int stack_pointer_rtx ;

void
ia64_reload_gp (void)
{
  rtx tmp;

  if (current_frame_info.reg_save_gp)
    tmp = gen_rtx_REG (DImode, current_frame_info.reg_save_gp);
  else
    {
      HOST_WIDE_INT offset;

      offset = (current_frame_info.spill_cfa_off
         + current_frame_info.spill_size);
      if (frame_pointer_needed)
        {
          tmp = hard_frame_pointer_rtx;
          offset = -offset;
        }
      else
        {
          tmp = stack_pointer_rtx;
          offset = current_frame_info.total_size - offset;
        }

      if (CONST_OK_FOR_I (offset))
        emit_insn (gen_adddi3 (pic_offset_table_rtx,
          tmp, GEN_INT (offset)));
      else
        {
          emit_move_insn (pic_offset_table_rtx, GEN_INT (offset));
          emit_insn (gen_adddi3 (pic_offset_table_rtx,
            pic_offset_table_rtx, tmp));
        }

      tmp = gen_rtx_MEM (DImode, pic_offset_table_rtx);
    }

  emit_move_insn (pic_offset_table_rtx, tmp);
}
