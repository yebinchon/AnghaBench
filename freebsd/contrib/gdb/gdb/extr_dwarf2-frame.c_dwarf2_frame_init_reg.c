
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct dwarf2_frame_state_reg {int dummy; } ;
struct dwarf2_frame_ops {int (* init_reg ) (struct gdbarch*,int,struct dwarf2_frame_state_reg*) ;} ;


 struct dwarf2_frame_ops* dwarf2_frame_ops (struct gdbarch*) ;
 int stub1 (struct gdbarch*,int,struct dwarf2_frame_state_reg*) ;

__attribute__((used)) static void
dwarf2_frame_init_reg (struct gdbarch *gdbarch, int regnum,
         struct dwarf2_frame_state_reg *reg)
{
  struct dwarf2_frame_ops *ops;

  ops = dwarf2_frame_ops (gdbarch);
  ops->init_reg (gdbarch, regnum, reg);
}
