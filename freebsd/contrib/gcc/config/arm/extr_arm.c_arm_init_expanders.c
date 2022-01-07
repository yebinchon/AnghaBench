
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARM_BOUNDARY ;
 int arg_pointer_rtx ;
 int arm_init_machine_status ;
 scalar_t__ cfun ;
 int init_machine_status ;
 int mark_reg_pointer (int ,int ) ;

void
arm_init_expanders (void)
{

  init_machine_status = arm_init_machine_status;




  if (cfun)
    mark_reg_pointer (arg_pointer_rtx, PARM_BOUNDARY);
}
