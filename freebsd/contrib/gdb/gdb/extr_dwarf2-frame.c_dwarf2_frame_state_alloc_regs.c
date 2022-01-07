
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_frame_state_reg_info {int num_regs; struct dwarf2_frame_state_reg* reg; } ;
struct dwarf2_frame_state_reg {int dummy; } ;


 int memset (struct dwarf2_frame_state_reg*,int ,int) ;
 scalar_t__ xrealloc (struct dwarf2_frame_state_reg*,int) ;

__attribute__((used)) static void
dwarf2_frame_state_alloc_regs (struct dwarf2_frame_state_reg_info *rs,
          int num_regs)
{
  size_t size = sizeof (struct dwarf2_frame_state_reg);

  if (num_regs <= rs->num_regs)
    return;

  rs->reg = (struct dwarf2_frame_state_reg *)
    xrealloc (rs->reg, num_regs * size);


  memset (rs->reg + rs->num_regs, 0, (num_regs - rs->num_regs) * size);
  rs->num_regs = num_regs;
}
