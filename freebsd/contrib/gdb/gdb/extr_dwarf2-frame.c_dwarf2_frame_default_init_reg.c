
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct dwarf2_frame_state_reg {int how; } ;


 int DWARF2_FRAME_REG_CFA ;
 int DWARF2_FRAME_REG_RA ;
 int PC_REGNUM ;
 int SP_REGNUM ;

__attribute__((used)) static void
dwarf2_frame_default_init_reg (struct gdbarch *gdbarch, int regnum,
          struct dwarf2_frame_state_reg *reg)
{
  if (regnum == PC_REGNUM)
    reg->how = DWARF2_FRAME_REG_RA;
  else if (regnum == SP_REGNUM)
    reg->how = DWARF2_FRAME_REG_CFA;
}
