
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int icode; int * prev_sri; } ;
typedef TYPE_1__ secondary_reload_info ;
typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
struct TYPE_5__ {int (* secondary_reload ) (int,int ,int,int,TYPE_1__*) ;} ;


 int CODE_FOR_nothing ;
 int NO_REGS ;
 int scratch_reload_class (int) ;
 int stub1 (int,int ,int,int,TYPE_1__*) ;
 TYPE_2__ targetm ;

enum reg_class
secondary_reload_class (bool in_p, enum reg_class class,
   enum machine_mode mode, rtx x)
{
  enum insn_code icode;
  secondary_reload_info sri;

  sri.icode = CODE_FOR_nothing;
  sri.prev_sri = ((void*)0);
  class = targetm.secondary_reload (in_p, x, class, mode, &sri);
  icode = sri.icode;



  if (icode == CODE_FOR_nothing || class != NO_REGS)
    return class;



  return scratch_reload_class (icode);
}
