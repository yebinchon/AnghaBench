
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 scalar_t__ REG_MODE_OK_FOR_BASE_P (int ,int ) ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 int arg_pointer_rtx ;
 int frame_pointer_rtx ;
 scalar_t__ reg_mentioned_p (int ,int ) ;
 scalar_t__ reload_completed ;
 scalar_t__ reload_in_progress ;
 int virtual_incoming_args_rtx ;
 int virtual_outgoing_args_rtx ;
 int virtual_stack_dynamic_rtx ;
 int virtual_stack_vars_rtx ;

int
cirrus_memory_offset (rtx op)
{

  if (! (reload_in_progress || reload_completed)
      && ( reg_mentioned_p (frame_pointer_rtx, op)
   || reg_mentioned_p (arg_pointer_rtx, op)
   || reg_mentioned_p (virtual_incoming_args_rtx, op)
   || reg_mentioned_p (virtual_outgoing_args_rtx, op)
   || reg_mentioned_p (virtual_stack_dynamic_rtx, op)
   || reg_mentioned_p (virtual_stack_vars_rtx, op)))
    return 0;

  if (GET_CODE (op) == MEM)
    {
      rtx ind;

      ind = XEXP (op, 0);


      if (GET_CODE (ind) == REG)
 return 1;




      if (GET_CODE (ind) == PLUS
   && GET_CODE (XEXP (ind, 0)) == REG
   && REG_MODE_OK_FOR_BASE_P (XEXP (ind, 0), VOIDmode)
   && GET_CODE (XEXP (ind, 1)) == CONST_INT)
 return 1;
    }

  return 0;
}
