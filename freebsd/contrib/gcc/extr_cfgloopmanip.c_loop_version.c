
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


struct loops {int dummy; } ;
struct loop {unsigned int num_nodes; TYPE_2__* latch; TYPE_1__* single_exit; TYPE_2__* header; scalar_t__ inner; } ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_35__ {int flags; } ;
struct TYPE_34__ {int flags; } ;
struct TYPE_33__ {int flags; TYPE_2__* dest; TYPE_2__* src; } ;


 int BB_IRREDUCIBLE_LOOP ;
 int EDGE_IRREDUCIBLE_LOOP ;
 int cfg_hook_duplicate_loop_to_header_edge (struct loop*,TYPE_1__*,struct loops*,int,int *,int *,int *,int *,int ) ;
 int extract_cond_bb_edges (TYPE_2__*,TYPE_1__**,TYPE_1__**) ;
 TYPE_1__* find_edge (TYPE_2__*,TYPE_2__*) ;
 int free (TYPE_2__**) ;
 TYPE_2__* get_bb_copy (TYPE_2__*) ;
 TYPE_2__** get_loop_body_in_dom_order (struct loop*) ;
 TYPE_1__* loop_preheader_edge (struct loop*) ;
 int loop_split_edge_with (TYPE_1__*,int *) ;
 struct loop* loopify (struct loops*,TYPE_1__*,TYPE_5__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;
 TYPE_2__* lv_adjust_loop_entry_edge (TYPE_2__*,TYPE_2__*,TYPE_1__*,void*) ;
 int lv_flush_pending_stmts (TYPE_1__*) ;
 int move_block_after (TYPE_2__*,TYPE_2__*) ;
 TYPE_5__* single_pred_edge (TYPE_2__*) ;
 TYPE_1__* single_succ_edge (TYPE_2__*) ;

struct loop *
loop_version (struct loops *loops, struct loop * loop,
       void *cond_expr, basic_block *condition_bb,
       bool place_after)
{
  basic_block first_head, second_head;
  edge entry, latch_edge, exit, true_edge, false_edge;
  int irred_flag;
  struct loop *nloop;
  basic_block cond_bb;


  if (loop->inner)
    return ((void*)0);


  entry = loop_preheader_edge (loop);
  irred_flag = entry->flags & EDGE_IRREDUCIBLE_LOOP;
  entry->flags &= ~EDGE_IRREDUCIBLE_LOOP;


  first_head = entry->dest;


  if (!cfg_hook_duplicate_loop_to_header_edge (loop, entry, loops, 1,
            ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0))
    return ((void*)0);



  second_head = entry->dest;


  cond_bb = lv_adjust_loop_entry_edge (first_head, second_head,
     entry, cond_expr);
  if (condition_bb)
    *condition_bb = cond_bb;

  if (!cond_bb)
    {
      entry->flags |= irred_flag;
      return ((void*)0);
    }

  latch_edge = single_succ_edge (get_bb_copy (loop->latch));

  extract_cond_bb_edges (cond_bb, &true_edge, &false_edge);
  nloop = loopify (loops,
     latch_edge,
     single_pred_edge (get_bb_copy (loop->header)),
     cond_bb, true_edge, false_edge,
     0 );

  exit = loop->single_exit;
  if (exit)
    nloop->single_exit = find_edge (get_bb_copy (exit->src), exit->dest);


  lv_flush_pending_stmts (latch_edge);


  extract_cond_bb_edges (cond_bb, &true_edge, &false_edge);
  lv_flush_pending_stmts (false_edge);

  if (irred_flag)
    {
      cond_bb->flags |= BB_IRREDUCIBLE_LOOP;
      loop_preheader_edge (loop)->flags |= EDGE_IRREDUCIBLE_LOOP;
      loop_preheader_edge (nloop)->flags |= EDGE_IRREDUCIBLE_LOOP;
      single_pred_edge (cond_bb)->flags |= EDGE_IRREDUCIBLE_LOOP;
    }

  if (place_after)
    {
      basic_block *bbs = get_loop_body_in_dom_order (nloop), after;
      unsigned i;

      after = loop->latch;

      for (i = 0; i < nloop->num_nodes; i++)
 {
   move_block_after (bbs[i], after);
   after = bbs[i];
 }
      free (bbs);
    }




  loop_split_edge_with (loop_preheader_edge (loop), ((void*)0));
  loop_split_edge_with (loop_preheader_edge (nloop), ((void*)0));

  return nloop;
}
