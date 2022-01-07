
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct initial_value_struct {int num_entries; TYPE_1__* entries; } ;
typedef int rtx ;
struct TYPE_4__ {struct initial_value_struct* hard_reg_initial_vals; } ;
struct TYPE_3__ {int hard_reg; int pseudo; } ;


 TYPE_2__* cfun ;
 int emit_insn_at_entry (int ) ;
 int emit_move_insn (int ,int ) ;
 int end_sequence () ;
 int get_insns () ;
 int start_sequence () ;

unsigned int
emit_initial_value_sets (void)
{
  struct initial_value_struct *ivs = cfun->hard_reg_initial_vals;
  int i;
  rtx seq;

  if (ivs == 0)
    return 0;

  start_sequence ();
  for (i = 0; i < ivs->num_entries; i++)
    emit_move_insn (ivs->entries[i].pseudo, ivs->entries[i].hard_reg);
  seq = get_insns ();
  end_sequence ();

  emit_insn_at_entry (seq);
  return 0;
}
