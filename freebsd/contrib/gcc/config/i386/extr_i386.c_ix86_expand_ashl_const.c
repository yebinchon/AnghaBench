
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int add; int shift_const; } ;


 int DImode ;
 int GEN_INT (int) ;
 int emit_insn (int ) ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_addsi3 (int ,int ,int ) ;
 int gen_ashldi3 (int ,int ,int ) ;
 int gen_ashlsi3 (int ,int ,int ) ;
 TYPE_1__* ix86_cost ;
 int optimize_size ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;

__attribute__((used)) static void
ix86_expand_ashl_const (rtx operand, int count, enum machine_mode mode)
{
  if (count == 1)
    {
      emit_insn ((mode == DImode
    ? gen_addsi3
    : gen_adddi3) (operand, operand, operand));
    }
  else if (!optimize_size
    && count * ix86_cost->add <= ix86_cost->shift_const)
    {
      int i;
      for (i=0; i<count; i++)
 {
   emit_insn ((mode == DImode
        ? gen_addsi3
        : gen_adddi3) (operand, operand, operand));
 }
    }
  else
    emit_insn ((mode == DImode
  ? gen_ashlsi3
  : gen_ashldi3) (operand, operand, GEN_INT (count)));
}
