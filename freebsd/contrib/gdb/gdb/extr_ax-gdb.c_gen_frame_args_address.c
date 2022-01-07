
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int scope; } ;
typedef int LONGEST ;


 int TARGET_VIRTUAL_FRAME_POINTER (int ,int*,int *) ;
 int ax_reg (struct agent_expr*,int) ;
 int gen_offset (struct agent_expr*,int ) ;

__attribute__((used)) static void
gen_frame_args_address (struct agent_expr *ax)
{
  int frame_reg;
  LONGEST frame_offset;

  TARGET_VIRTUAL_FRAME_POINTER (ax->scope, &frame_reg, &frame_offset);
  ax_reg (ax, frame_reg);
  gen_offset (ax, frame_offset);
}
