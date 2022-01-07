
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct edge_prediction {int ep_probability; int ep_predictor; TYPE_1__* ep_edge; struct edge_prediction* ep_next; } ;
typedef enum br_predictor { ____Placeholder_br_predictor } br_predictor ;
typedef TYPE_1__* edge ;
struct TYPE_5__ {struct edge_prediction* predictions; int succs; } ;
struct TYPE_4__ {TYPE_3__* src; } ;


 int EDGE_COUNT (int ) ;
 TYPE_3__* ENTRY_BLOCK_PTR ;
 scalar_t__ PROFILE_GUESSED ;
 scalar_t__ flag_guess_branch_prob ;
 int gcc_assert (int) ;
 struct edge_prediction* ggc_alloc (int) ;
 scalar_t__ optimize ;
 scalar_t__ profile_status ;

void
tree_predict_edge (edge e, enum br_predictor predictor, int probability)
{
  gcc_assert (profile_status != PROFILE_GUESSED);
  if ((e->src != ENTRY_BLOCK_PTR && EDGE_COUNT (e->src->succs) > 1)
      && flag_guess_branch_prob && optimize)
    {
      struct edge_prediction *i = ggc_alloc (sizeof (struct edge_prediction));

      i->ep_next = e->src->predictions;
      e->src->predictions = i;
      i->ep_probability = probability;
      i->ep_predictor = predictor;
      i->ep_edge = e;
    }
}
