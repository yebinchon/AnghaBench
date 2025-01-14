
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_list {int dummy; } ;
typedef scalar_t__ basic_block ;


 int EDGE_INDEX_NO_EDGE ;
 scalar_t__ INDEX_EDGE_PRED_BB (struct edge_list*,int) ;
 scalar_t__ INDEX_EDGE_SUCC_BB (struct edge_list*,int) ;
 int NUM_EDGES (struct edge_list*) ;

int
find_edge_index (struct edge_list *edge_list, basic_block pred, basic_block succ)
{
  int x;

  for (x = 0; x < NUM_EDGES (edge_list); x++)
    if (INDEX_EDGE_PRED_BB (edge_list, x) == pred
 && INDEX_EDGE_SUCC_BB (edge_list, x) == succ)
      return x;

  return (EDGE_INDEX_NO_EDGE);
}
