
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 size_t ARG_POINTER_REGNUM ;
 size_t FRAME_POINTER_REGNUM ;
 size_t STACK_POINTER_REGNUM ;
 int copy_to_reg (int ) ;
 scalar_t__* fixed_regs ;
 int virtual_incoming_args_rtx ;

rtx
default_internal_arg_pointer (void)
{




  if ((ARG_POINTER_REGNUM == STACK_POINTER_REGNUM
       || ! (fixed_regs[ARG_POINTER_REGNUM]
      || ARG_POINTER_REGNUM == FRAME_POINTER_REGNUM)))
    return copy_to_reg (virtual_incoming_args_rtx);
  else
    return virtual_incoming_args_rtx;
}
