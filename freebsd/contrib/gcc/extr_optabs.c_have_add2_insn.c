
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_8__ {TYPE_1__* handlers; } ;
struct TYPE_7__ {TYPE_2__* operand; } ;
struct TYPE_6__ {int mode; int (* predicate ) (int ,int ) ;} ;
struct TYPE_5__ {scalar_t__ insn_code; } ;


 int CODE_FOR_nothing ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ VOIDmode ;
 TYPE_4__* add_optab ;
 int gcc_assert (int) ;
 TYPE_3__* insn_data ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;

int
have_add2_insn (rtx x, rtx y)
{
  int icode;

  gcc_assert (GET_MODE (x) != VOIDmode);

  icode = (int) add_optab->handlers[(int) GET_MODE (x)].insn_code;

  if (icode == CODE_FOR_nothing)
    return 0;

  if (!(insn_data[icode].operand[0].predicate
 (x, insn_data[icode].operand[0].mode))
      || !(insn_data[icode].operand[1].predicate
    (x, insn_data[icode].operand[1].mode))
      || !(insn_data[icode].operand[2].predicate
    (y, insn_data[icode].operand[2].mode)))
    return 0;

  return 1;
}
