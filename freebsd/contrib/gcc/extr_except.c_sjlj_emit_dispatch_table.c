
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sjlj_lp_info {int dispatch_index; int directly_reachable; } ;
struct eh_region {int post_landing_pad; } ;
typedef int rtx ;
typedef TYPE_2__* edge ;
typedef TYPE_3__* basic_block ;
struct TYPE_11__ {TYPE_1__* eh; } ;
struct TYPE_10__ {int count; int next_bb; } ;
struct TYPE_9__ {int probability; int count; } ;
struct TYPE_8__ {int last_region_number; int region_array; int filter; int exc_ptr; int sjlj_fc; } ;


 int EDGE_FALLTHRU ;
 int EQ ;
 int GEN_INT (int ) ;
 int NULL_RTX ;
 int REG_BR_PROB_BASE ;
 scalar_t__ TYPE_MODE (int ) ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ VEC_index (int ,int ,int) ;
 int adjust_address (int ,scalar_t__,scalar_t__) ;
 TYPE_7__* cfun ;
 int convert_memory_address (scalar_t__,int ) ;
 int convert_to_mode (scalar_t__,int ,int ) ;
 int copy_to_reg (int ) ;
 int eh_region ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int ,scalar_t__,int ,int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 TYPE_3__* emit_to_new_bb_before (int ,int ) ;
 int end_sequence () ;
 int expand_builtin_setjmp_receiver (int ) ;
 int get_insns () ;
 int integer_type_node ;
 TYPE_2__* make_edge (TYPE_3__*,int ,int ) ;
 scalar_t__ ptr_mode ;
 scalar_t__ sjlj_fc_call_site_ofs ;
 scalar_t__ sjlj_fc_data_ofs ;
 int start_sequence () ;
 scalar_t__ word_mode ;

__attribute__((used)) static void
sjlj_emit_dispatch_table (rtx dispatch_label, struct sjlj_lp_info *lp_info)
{
  int i, first_reachable;
  rtx mem, dispatch, seq, fc;
  rtx before;
  basic_block bb;
  edge e;

  fc = cfun->eh->sjlj_fc;

  start_sequence ();

  emit_label (dispatch_label);


  expand_builtin_setjmp_receiver (dispatch_label);




  mem = adjust_address (fc, TYPE_MODE (integer_type_node),
   sjlj_fc_call_site_ofs);
  dispatch = copy_to_reg (mem);

  mem = adjust_address (fc, word_mode, sjlj_fc_data_ofs);
  if (word_mode != ptr_mode)
    {



      mem = convert_to_mode (ptr_mode, mem, 0);

    }
  emit_move_insn (cfun->eh->exc_ptr, mem);

  mem = adjust_address (fc, word_mode, sjlj_fc_data_ofs + UNITS_PER_WORD);
  emit_move_insn (cfun->eh->filter, mem);




  first_reachable = 0;
  for (i = cfun->eh->last_region_number; i > 0; --i)
    {
      if (! lp_info[i].directly_reachable)
 continue;

      if (! first_reachable)
 {
   first_reachable = i;
   continue;
 }

      emit_cmp_and_jump_insns (dispatch, GEN_INT (lp_info[i].dispatch_index),
          EQ, NULL_RTX, TYPE_MODE (integer_type_node), 0,
                        ((struct eh_region *)VEC_index (eh_region, cfun->eh->region_array, i))
    ->post_landing_pad);
    }

  seq = get_insns ();
  end_sequence ();

  before = (((struct eh_region *)VEC_index (eh_region, cfun->eh->region_array, first_reachable))
     ->post_landing_pad);

  bb = emit_to_new_bb_before (seq, before);
  e = make_edge (bb, bb->next_bb, EDGE_FALLTHRU);
  e->count = bb->count;
  e->probability = REG_BR_PROB_BASE;
}
