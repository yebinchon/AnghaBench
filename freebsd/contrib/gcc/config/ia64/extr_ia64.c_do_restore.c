
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int next_iter; int * prev_insn; } ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int ) ;
 int emit_insn (int ) ;
 TYPE_1__ spill_fill_data ;
 int spill_restore_mem (int ,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
do_restore (rtx (*move_fn) (rtx, rtx, rtx), rtx reg, HOST_WIDE_INT cfa_off)
{
  int iter = spill_fill_data.next_iter;
  rtx insn;

  insn = emit_insn ((*move_fn) (reg, spill_restore_mem (reg, cfa_off),
    GEN_INT (cfa_off)));
  spill_fill_data.prev_insn[iter] = insn;
}
