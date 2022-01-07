
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emit_status {int * x_regno_reg_rtx; } ;
typedef int rtx ;


 size_t VIRTUAL_CFA_REGNUM ;
 size_t VIRTUAL_INCOMING_ARGS_REGNUM ;
 size_t VIRTUAL_OUTGOING_ARGS_REGNUM ;
 size_t VIRTUAL_STACK_DYNAMIC_REGNUM ;
 size_t VIRTUAL_STACK_VARS_REGNUM ;
 int virtual_cfa_rtx ;
 int virtual_incoming_args_rtx ;
 int virtual_outgoing_args_rtx ;
 int virtual_stack_dynamic_rtx ;
 int virtual_stack_vars_rtx ;

__attribute__((used)) static void
init_virtual_regs (struct emit_status *es)
{
  rtx *ptr = es->x_regno_reg_rtx;
  ptr[VIRTUAL_INCOMING_ARGS_REGNUM] = virtual_incoming_args_rtx;
  ptr[VIRTUAL_STACK_VARS_REGNUM] = virtual_stack_vars_rtx;
  ptr[VIRTUAL_STACK_DYNAMIC_REGNUM] = virtual_stack_dynamic_rtx;
  ptr[VIRTUAL_OUTGOING_ARGS_REGNUM] = virtual_outgoing_args_rtx;
  ptr[VIRTUAL_CFA_REGNUM] = virtual_cfa_rtx;
}
