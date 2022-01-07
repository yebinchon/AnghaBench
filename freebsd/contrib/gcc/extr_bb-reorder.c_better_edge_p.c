
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* edge ;
typedef scalar_t__ basic_block ;
struct TYPE_6__ {int flags; TYPE_1__* dest; } ;
struct TYPE_5__ {scalar_t__ prev_bb; } ;


 int EDGE_CROSSING ;
 scalar_t__ flag_reorder_blocks_and_partition ;

__attribute__((used)) static bool
better_edge_p (basic_block bb, edge e, int prob, int freq, int best_prob,
        int best_freq, edge cur_best_edge)
{
  bool is_better_edge;



  int diff_prob = best_prob / 10;
  int diff_freq = best_freq / 10;

  if (prob > best_prob + diff_prob)

    is_better_edge = 1;
  else if (prob < best_prob - diff_prob)

    is_better_edge = 0;
  else if (freq < best_freq - diff_freq)




    is_better_edge = 1;
  else if (freq > best_freq + diff_freq)

    is_better_edge = 0;
  else if (e->dest->prev_bb == bb)


    is_better_edge = 1;
  else
    is_better_edge = 0;




  if (!is_better_edge
      && flag_reorder_blocks_and_partition
      && cur_best_edge
      && (cur_best_edge->flags & EDGE_CROSSING)
      && !(e->flags & EDGE_CROSSING))
    is_better_edge = 1;

  return is_better_edge;
}
