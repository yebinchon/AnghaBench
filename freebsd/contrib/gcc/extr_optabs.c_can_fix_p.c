
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
typedef TYPE_3__* convert_optab ;
struct TYPE_12__ {TYPE_1__* handlers; } ;
struct TYPE_11__ {TYPE_2__** handlers; } ;
struct TYPE_10__ {int insn_code; } ;
struct TYPE_9__ {int insn_code; } ;


 int CODE_FOR_nothing ;
 TYPE_8__* ftrunc_optab ;
 TYPE_3__* sfix_optab ;
 TYPE_3__* sfixtrunc_optab ;
 TYPE_3__* ufix_optab ;
 TYPE_3__* ufixtrunc_optab ;

__attribute__((used)) static enum insn_code
can_fix_p (enum machine_mode fixmode, enum machine_mode fltmode,
    int unsignedp, int *truncp_ptr)
{
  convert_optab tab;
  enum insn_code icode;

  tab = unsignedp ? ufixtrunc_optab : sfixtrunc_optab;
  icode = tab->handlers[fixmode][fltmode].insn_code;
  if (icode != CODE_FOR_nothing)
    {
      *truncp_ptr = 0;
      return icode;
    }




  tab = unsignedp ? ufix_optab : sfix_optab;
  icode = tab->handlers[fixmode][fltmode].insn_code;
  if (icode != CODE_FOR_nothing
      && ftrunc_optab->handlers[fltmode].insn_code != CODE_FOR_nothing)
    {
      *truncp_ptr = 1;
      return icode;
    }

  *truncp_ptr = 0;
  return CODE_FOR_nothing;
}
