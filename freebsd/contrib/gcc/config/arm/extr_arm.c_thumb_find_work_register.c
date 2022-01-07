
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nregs; } ;
struct TYPE_6__ {TYPE_1__ args_info; TYPE_2__* machine; } ;
struct TYPE_5__ {scalar_t__ uses_anonymous_args; } ;


 int LAST_ARG_REGNUM ;
 int LAST_LO_REGNUM ;
 int UNITS_PER_WORD ;
 TYPE_3__* cfun ;
 int current_function_args_size ;
 scalar_t__ current_function_pretend_args_size ;
 int gcc_unreachable () ;
 int * regs_ever_live ;

__attribute__((used)) static int
thumb_find_work_register (unsigned long pushed_regs_mask)
{
  int reg;




  for (reg = LAST_ARG_REGNUM; reg >= 0; reg --)
    if (!regs_ever_live[reg])
      return reg;
  if (cfun->machine->uses_anonymous_args
      && current_function_pretend_args_size > 0)
    return LAST_ARG_REGNUM;
  if (! cfun->machine->uses_anonymous_args
      && current_function_args_size >= 0
      && current_function_args_size <= (LAST_ARG_REGNUM * UNITS_PER_WORD)
      && cfun->args_info.nregs < 4)
    return LAST_ARG_REGNUM;


  for (reg = LAST_LO_REGNUM; reg > LAST_ARG_REGNUM; reg --)
    if (pushed_regs_mask & (1 << reg))
      return reg;



  gcc_unreachable ();
}
