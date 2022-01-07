
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct function {TYPE_1__* eh; } ;
typedef scalar_t__ rtx ;
struct TYPE_4__ {int (* eh_return_filter_mode ) () ;} ;
struct TYPE_3__ {scalar_t__ filter; } ;


 struct function* cfun ;
 scalar_t__ gen_reg_rtx (int ) ;
 int stub1 () ;
 TYPE_2__ targetm ;

rtx
get_exception_filter (struct function *fun)
{
  rtx filter = fun->eh->filter;
  if (fun == cfun && ! filter)
    {
      filter = gen_reg_rtx (targetm.eh_return_filter_mode ());
      fun->eh->filter = filter;
    }
  return filter;
}
