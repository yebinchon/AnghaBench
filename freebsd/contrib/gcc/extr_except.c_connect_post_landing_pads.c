
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct eh_region {int region_number; scalar_t__ type; int * label; scalar_t__ resume; scalar_t__ post_landing_pad; struct eh_region* outer; } ;
typedef scalar_t__ rtx ;
typedef TYPE_2__* edge ;
typedef TYPE_3__* basic_block ;
struct TYPE_13__ {TYPE_1__* eh; } ;
struct TYPE_12__ {int count; int succs; } ;
struct TYPE_11__ {int count; int probability; } ;
struct TYPE_10__ {int last_region_number; int exc_ptr; int region_array; } ;


 int BARRIER_P (scalar_t__) ;
 TYPE_3__* BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ EDGE_COUNT (int ) ;
 int EDGE_SUCC (TYPE_3__*,int ) ;
 scalar_t__ ERT_CLEANUP ;
 scalar_t__ INSN_DELETED_P (scalar_t__) ;
 int LCT_THROW ;
 int NEXT_INSN (int ) ;
 int REG_BR_PROB_BASE ;
 struct eh_region* VEC_index (int ,int ,int) ;
 int VOIDmode ;
 TYPE_7__* cfun ;
 int delete_insn (scalar_t__) ;
 int delete_insns_since (int ) ;
 int eh_region ;
 scalar_t__ emit_insn_before (scalar_t__,scalar_t__) ;
 int emit_jump (scalar_t__) ;
 int emit_library_call (int ,int ,int ,int,int ,int ) ;
 int end_sequence () ;
 int gcc_assert (int ) ;
 scalar_t__ get_insns () ;
 int last_call_insn () ;
 TYPE_2__* make_edge (TYPE_3__*,TYPE_3__*,int ) ;
 int ptr_mode ;
 int remove_edge (int ) ;
 int remove_eh_handler (struct eh_region*) ;
 int start_sequence () ;
 int unwind_resume_libfunc ;

__attribute__((used)) static void
connect_post_landing_pads (void)
{
  int i;

  for (i = cfun->eh->last_region_number; i > 0; --i)
    {
      struct eh_region *region;
      struct eh_region *outer;
      rtx seq;
      rtx barrier;

      region = VEC_index (eh_region, cfun->eh->region_array, i);

      if (!region || region->region_number != i)
 continue;



      if (! region->resume || INSN_DELETED_P (region->resume))
 continue;


      for (outer = region->outer; outer ; outer = outer->outer)
 if (outer->post_landing_pad)
   break;

      start_sequence ();

      if (outer)
 {
   edge e;
   basic_block src, dest;

   emit_jump (outer->post_landing_pad);
   src = BLOCK_FOR_INSN (region->resume);
   dest = BLOCK_FOR_INSN (outer->post_landing_pad);
   while (EDGE_COUNT (src->succs) > 0)
     remove_edge (EDGE_SUCC (src, 0));
   e = make_edge (src, dest, 0);
   e->probability = REG_BR_PROB_BASE;
   e->count = src->count;
 }
      else
 {
   emit_library_call (unwind_resume_libfunc, LCT_THROW,
        VOIDmode, 1, cfun->eh->exc_ptr, ptr_mode);
   delete_insns_since (NEXT_INSN (last_call_insn ()));
 }

      seq = get_insns ();
      end_sequence ();
      barrier = emit_insn_before (seq, region->resume);

      gcc_assert (BARRIER_P (barrier));
      delete_insn (barrier);
      delete_insn (region->resume);




      if (region->label == ((void*)0) && region->type == ERT_CLEANUP)
 remove_eh_handler (region);
    }
}
