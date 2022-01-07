
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* machine; } ;
struct TYPE_5__ {int save_return_addr_p; } ;
struct TYPE_4__ {scalar_t__ base_reg; } ;


 int ARG_POINTER_REGNUM ;
 int BASE_REGNUM ;
 int FRAME_POINTER_REGNUM ;
 int HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ NULL_RTX ;
 int RETURN_ADDRESS_POINTER_REGNUM ;
 int STACK_POINTER_REGNUM ;
 scalar_t__ TARGET_CPU_ZARCH ;
 TYPE_3__* cfun ;
 TYPE_2__ cfun_frame_layout ;
 int current_function_calls_eh_return ;
 int current_function_stdarg ;
 int gcc_assert (int) ;
 int s390_init_frame_layout () ;

bool
s390_can_eliminate (int from, int to)
{
  if (from == BASE_REGNUM && to == BASE_REGNUM)
    {
      if (TARGET_CPU_ZARCH)
 {
   s390_init_frame_layout ();
   return cfun->machine->base_reg == NULL_RTX;
 }

      return 0;
    }


  gcc_assert (to == STACK_POINTER_REGNUM
       || to == HARD_FRAME_POINTER_REGNUM);

  gcc_assert (from == FRAME_POINTER_REGNUM
       || from == ARG_POINTER_REGNUM
       || from == RETURN_ADDRESS_POINTER_REGNUM);


  if (from == RETURN_ADDRESS_POINTER_REGNUM)
    if (!current_function_calls_eh_return
 && !current_function_stdarg
 && !cfun_frame_layout.save_return_addr_p)
      return 0;

  return 1;
}
