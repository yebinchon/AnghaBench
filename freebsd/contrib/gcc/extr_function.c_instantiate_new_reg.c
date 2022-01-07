
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ NULL_RTX ;
 scalar_t__ arg_pointer_rtx ;
 int cfa_offset ;
 int dynamic_offset ;
 scalar_t__ frame_pointer_rtx ;
 int in_arg_offset ;
 int out_arg_offset ;
 scalar_t__ stack_pointer_rtx ;
 int var_offset ;
 scalar_t__ virtual_cfa_rtx ;
 scalar_t__ virtual_incoming_args_rtx ;
 scalar_t__ virtual_outgoing_args_rtx ;
 scalar_t__ virtual_stack_dynamic_rtx ;
 scalar_t__ virtual_stack_vars_rtx ;

__attribute__((used)) static rtx
instantiate_new_reg (rtx x, HOST_WIDE_INT *poffset)
{
  rtx new;
  HOST_WIDE_INT offset;

  if (x == virtual_incoming_args_rtx)
    new = arg_pointer_rtx, offset = in_arg_offset;
  else if (x == virtual_stack_vars_rtx)
    new = frame_pointer_rtx, offset = var_offset;
  else if (x == virtual_stack_dynamic_rtx)
    new = stack_pointer_rtx, offset = dynamic_offset;
  else if (x == virtual_outgoing_args_rtx)
    new = stack_pointer_rtx, offset = out_arg_offset;
  else if (x == virtual_cfa_rtx)
    {



      new = arg_pointer_rtx;

      offset = cfa_offset;
    }
  else
    return NULL_RTX;

  *poffset = offset;
  return new;
}
