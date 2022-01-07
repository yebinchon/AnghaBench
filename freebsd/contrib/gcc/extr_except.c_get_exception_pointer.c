
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct function {TYPE_1__* eh; } ;
typedef scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ exc_ptr; } ;


 struct function* cfun ;
 scalar_t__ gen_reg_rtx (int ) ;
 int ptr_mode ;

rtx
get_exception_pointer (struct function *fun)
{
  rtx exc_ptr = fun->eh->exc_ptr;
  if (fun == cfun && ! exc_ptr)
    {
      exc_ptr = gen_reg_rtx (ptr_mode);
      fun->eh->exc_ptr = exc_ptr;
    }
  return exc_ptr;
}
