
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_frame_state_reg_info {struct dwarf2_frame_state_reg_info* reg; struct dwarf2_frame_state_reg_info* prev; } ;


 int xfree (struct dwarf2_frame_state_reg_info*) ;

__attribute__((used)) static void
dwarf2_frame_state_free_regs (struct dwarf2_frame_state_reg_info *rs)
{
  if (rs)
    {
      dwarf2_frame_state_free_regs (rs->prev);

      xfree (rs->reg);
      xfree (rs);
    }
}
