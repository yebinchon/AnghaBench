
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
typedef TYPE_2__* convert_optab ;
struct TYPE_6__ {TYPE_1__** handlers; } ;
struct TYPE_5__ {int insn_code; } ;


 TYPE_2__* sfloat_optab ;
 TYPE_2__* ufloat_optab ;

__attribute__((used)) static enum insn_code
can_float_p (enum machine_mode fltmode, enum machine_mode fixmode,
      int unsignedp)
{
  convert_optab tab;

  tab = unsignedp ? ufloat_optab : sfloat_optab;
  return tab->handlers[fltmode][fixmode].insn_code;
}
