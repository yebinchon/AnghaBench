
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct eh_region {int region_number; scalar_t__ type; int post_landing_pad; int landing_pad; } ;
typedef int rtx ;
typedef TYPE_2__* edge ;
typedef TYPE_3__* basic_block ;
struct TYPE_13__ {TYPE_1__* eh; } ;
struct TYPE_12__ {int (* eh_return_filter_mode ) () ;} ;
struct TYPE_11__ {int count; int next_bb; } ;
struct TYPE_10__ {int probability; int count; } ;
struct TYPE_9__ {int last_region_number; int filter; int exc_ptr; int region_array; } ;


 int EDGE_FALLTHRU ;
 int EH_RETURN_DATA_REGNO (int) ;
 scalar_t__ ERT_ALLOWED_EXCEPTIONS ;
 scalar_t__ ERT_CLEANUP ;
 scalar_t__ ERT_TRY ;
 scalar_t__ HAVE_exception_receiver ;
 scalar_t__ HAVE_nonlocal_goto_receiver ;
 int REG_BR_PROB_BASE ;
 struct eh_region* VEC_index (int ,int ,int) ;
 TYPE_8__* cfun ;
 int eh_region ;
 int emit_insn (int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 TYPE_3__* emit_to_new_bb_before (int ,int ) ;
 int end_sequence () ;
 int gen_exception_receiver () ;
 int gen_label_rtx () ;
 int gen_nonlocal_goto_receiver () ;
 int gen_rtx_REG (int ,int ) ;
 int get_insns () ;
 TYPE_2__* make_edge (TYPE_3__*,int ,int ) ;
 int ptr_mode ;
 int start_sequence () ;
 int stub1 () ;
 TYPE_4__ targetm ;

__attribute__((used)) static void
dw2_build_landing_pads (void)
{
  int i;

  for (i = cfun->eh->last_region_number; i > 0; --i)
    {
      struct eh_region *region;
      rtx seq;
      basic_block bb;
      edge e;

      region = VEC_index (eh_region, cfun->eh->region_array, i);

      if (!region || region->region_number != i)
 continue;

      if (region->type != ERT_CLEANUP
   && region->type != ERT_TRY
   && region->type != ERT_ALLOWED_EXCEPTIONS)
 continue;

      start_sequence ();

      region->landing_pad = gen_label_rtx ();
      emit_label (region->landing_pad);
   { }

      emit_move_insn (cfun->eh->exc_ptr,
        gen_rtx_REG (ptr_mode, EH_RETURN_DATA_REGNO (0)));
      emit_move_insn (cfun->eh->filter,
        gen_rtx_REG (targetm.eh_return_filter_mode (),
       EH_RETURN_DATA_REGNO (1)));

      seq = get_insns ();
      end_sequence ();

      bb = emit_to_new_bb_before (seq, region->post_landing_pad);
      e = make_edge (bb, bb->next_bb, EDGE_FALLTHRU);
      e->count = bb->count;
      e->probability = REG_BR_PROB_BASE;
    }
}
