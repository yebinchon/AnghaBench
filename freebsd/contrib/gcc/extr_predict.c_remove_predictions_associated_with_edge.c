
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct edge_prediction {struct edge_prediction* ep_next; TYPE_2__* ep_edge; } ;
typedef TYPE_2__* edge ;
struct TYPE_5__ {TYPE_1__* src; } ;
struct TYPE_4__ {struct edge_prediction* predictions; } ;



void
remove_predictions_associated_with_edge (edge e)
{
  if (e->src->predictions)
    {
      struct edge_prediction **prediction = &e->src->predictions;
      while (*prediction)
 {
   if ((*prediction)->ep_edge == e)
     *prediction = (*prediction)->ep_next;
   else
     prediction = &((*prediction)->ep_next);
 }
    }
}
