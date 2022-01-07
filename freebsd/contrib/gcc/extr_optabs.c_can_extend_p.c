
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


 int CODE_FOR_ptr_extend ;
 TYPE_2__* sext_optab ;
 TYPE_2__* zext_optab ;

enum insn_code
can_extend_p (enum machine_mode to_mode, enum machine_mode from_mode,
       int unsignedp)
{
  convert_optab tab;





  tab = unsignedp ? zext_optab : sext_optab;
  return tab->handlers[to_mode][from_mode].insn_code;
}
