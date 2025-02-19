
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_25__ ;
typedef struct TYPE_31__ TYPE_24__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct loops {int dummy; } ;
struct loop {TYPE_2__* header; TYPE_2__* latch; int inner; } ;
typedef int sbitmap ;
typedef int rtx ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_33__ {int flags; int succs; } ;
struct TYPE_32__ {int flags; TYPE_2__* dest; } ;
struct TYPE_31__ {int prev_bb; } ;
struct TYPE_30__ {int flags; int probability; int count; int dest; } ;


 int BB_END (TYPE_2__*) ;
 int BB_IRREDUCIBLE_LOOP ;
 TYPE_1__* BRANCH_EDGE (TYPE_2__*) ;
 int EDGE_COUNT (int ) ;
 int EDGE_FALLTHRU ;
 int EDGE_IRREDUCIBLE_LOOP ;
 TYPE_25__* EDGE_SUCC (TYPE_2__*,int) ;
 TYPE_24__* EXIT_BLOCK_PTR ;
 TYPE_1__* FALLTHRU_EDGE (TYPE_2__*) ;
 int GET_CODE (int ) ;
 int NULL_RTX ;
 int REG_BR_PROB_BASE ;
 int XEXP (int ,int) ;
 int block_label (int ) ;
 int compare_and_jump_seq (int ,int ,int ,int ,int,int ) ;
 TYPE_2__* create_empty_bb (int ) ;
 int duplicate_loop_to_header_edge (struct loop*,TYPE_1__*,struct loops*,int,int ,int *,int *,int *,int ) ;
 int emit_insn_after (int ,int ) ;
 int fix_loop_placement (struct loop*) ;
 int flow_bb_inside_loop_p (struct loop*,TYPE_2__*) ;
 int gcc_assert (int) ;
 TYPE_2__* get_bb_copy (TYPE_2__*) ;
 int just_once_each_iteration_p (struct loop*,TYPE_2__*) ;
 TYPE_1__* loop_preheader_edge (struct loop*) ;
 int loop_split_edge_with (TYPE_1__*,int ) ;
 struct loop* loopify (struct loops*,TYPE_1__*,int ,TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* make_edge (TYPE_2__*,int ,int ) ;
 int remove_path (struct loops*,TYPE_1__*) ;
 int sbitmap_alloc (int) ;
 int sbitmap_free (int ) ;
 int sbitmap_zero (int ) ;
 int single_pred_edge (TYPE_2__*) ;
 TYPE_1__* single_succ_edge (TYPE_2__*) ;

__attribute__((used)) static struct loop *
unswitch_loop (struct loops *loops, struct loop *loop, basic_block unswitch_on,
        rtx cond, rtx cinsn)
{
  edge entry, latch_edge, true_edge, false_edge, e;
  basic_block switch_bb, unswitch_on_alt;
  struct loop *nloop;
  sbitmap zero_bitmap;
  int irred_flag, prob;
  rtx seq;


  gcc_assert (flow_bb_inside_loop_p (loop, unswitch_on));
  gcc_assert (EDGE_COUNT (unswitch_on->succs) == 2);
  gcc_assert (just_once_each_iteration_p (loop, unswitch_on));
  gcc_assert (!loop->inner);
  gcc_assert (flow_bb_inside_loop_p (loop, EDGE_SUCC (unswitch_on, 0)->dest));
  gcc_assert (flow_bb_inside_loop_p (loop, EDGE_SUCC (unswitch_on, 1)->dest));

  entry = loop_preheader_edge (loop);


  irred_flag = entry->flags & EDGE_IRREDUCIBLE_LOOP;
  entry->flags &= ~EDGE_IRREDUCIBLE_LOOP;
  zero_bitmap = sbitmap_alloc (2);
  sbitmap_zero (zero_bitmap);
  if (!duplicate_loop_to_header_edge (loop, entry, loops, 1,
 zero_bitmap, ((void*)0), ((void*)0), ((void*)0), 0))
    {
      sbitmap_free (zero_bitmap);
      return ((void*)0);
    }
  sbitmap_free (zero_bitmap);
  entry->flags |= irred_flag;


  unswitch_on_alt = get_bb_copy (unswitch_on);
  true_edge = BRANCH_EDGE (unswitch_on_alt);
  false_edge = FALLTHRU_EDGE (unswitch_on);
  latch_edge = single_succ_edge (get_bb_copy (loop->latch));


  prob = true_edge->probability;
  switch_bb = create_empty_bb (EXIT_BLOCK_PTR->prev_bb);
  seq = compare_and_jump_seq (XEXP (cond, 0), XEXP (cond, 1), GET_CODE (cond),
         block_label (true_edge->dest),
         prob, cinsn);
  emit_insn_after (seq, BB_END (switch_bb));
  e = make_edge (switch_bb, true_edge->dest, 0);
  e->probability = prob;
  e->count = latch_edge->count * prob / REG_BR_PROB_BASE;
  e = make_edge (switch_bb, FALLTHRU_EDGE (unswitch_on)->dest, EDGE_FALLTHRU);
  e->probability = false_edge->probability;
  e->count = latch_edge->count * (false_edge->probability) / REG_BR_PROB_BASE;

  if (irred_flag)
    {
      switch_bb->flags |= BB_IRREDUCIBLE_LOOP;
      EDGE_SUCC (switch_bb, 0)->flags |= EDGE_IRREDUCIBLE_LOOP;
      EDGE_SUCC (switch_bb, 1)->flags |= EDGE_IRREDUCIBLE_LOOP;
    }
  else
    {
      switch_bb->flags &= ~BB_IRREDUCIBLE_LOOP;
      EDGE_SUCC (switch_bb, 0)->flags &= ~EDGE_IRREDUCIBLE_LOOP;
      EDGE_SUCC (switch_bb, 1)->flags &= ~EDGE_IRREDUCIBLE_LOOP;
    }


  nloop = loopify (loops, latch_edge,
     single_pred_edge (get_bb_copy (loop->header)), switch_bb,
     BRANCH_EDGE (switch_bb), FALLTHRU_EDGE (switch_bb), 1);


  remove_path (loops, true_edge);
  remove_path (loops, false_edge);



  fix_loop_placement (loop);
  fix_loop_placement (nloop);


  loop_split_edge_with (loop_preheader_edge (loop), NULL_RTX);
  loop_split_edge_with (loop_preheader_edge (nloop), NULL_RTX);

  return nloop;
}
