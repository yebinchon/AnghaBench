
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int (* predicate ) (int ,int ) ;} ;


 scalar_t__ CODE_FOR_indirect_jump ;
 int Pmode ;
 int copy_to_mode_reg (int ,int ) ;
 int emit_barrier () ;
 int emit_jump_insn (int ) ;
 int gen_indirect_jump (int ) ;
 TYPE_2__* insn_data ;
 int stub1 (int ,int ) ;

void
emit_indirect_jump (rtx loc)
{
  if (!insn_data[(int) CODE_FOR_indirect_jump].operand[0].predicate
      (loc, Pmode))
    loc = copy_to_mode_reg (Pmode, loc);

  emit_jump_insn (gen_indirect_jump (loc));
  emit_barrier ();
}
