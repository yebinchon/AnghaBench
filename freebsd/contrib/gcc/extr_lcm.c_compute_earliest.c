
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct edge_list {int dummy; } ;
typedef int sbitmap ;
typedef TYPE_1__* basic_block ;
struct TYPE_6__ {size_t index; } ;


 TYPE_1__* ENTRY_BLOCK_PTR ;
 TYPE_1__* EXIT_BLOCK_PTR ;
 TYPE_1__* INDEX_EDGE_PRED_BB (struct edge_list*,int) ;
 TYPE_1__* INDEX_EDGE_SUCC_BB (struct edge_list*,int) ;
 int NUM_EDGES (struct edge_list*) ;
 int sbitmap_a_and_b_or_c (int ,int ,int ,int ) ;
 int sbitmap_alloc (int) ;
 int sbitmap_copy (int ,int ) ;
 int sbitmap_difference (int ,int ,int ) ;
 int sbitmap_free (int ) ;
 int sbitmap_not (int ,int ) ;
 int sbitmap_zero (int ) ;

__attribute__((used)) static void
compute_earliest (struct edge_list *edge_list, int n_exprs, sbitmap *antin,
    sbitmap *antout, sbitmap *avout, sbitmap *kill,
    sbitmap *earliest)
{
  sbitmap difference, temp_bitmap;
  int x, num_edges;
  basic_block pred, succ;

  num_edges = NUM_EDGES (edge_list);

  difference = sbitmap_alloc (n_exprs);
  temp_bitmap = sbitmap_alloc (n_exprs);

  for (x = 0; x < num_edges; x++)
    {
      pred = INDEX_EDGE_PRED_BB (edge_list, x);
      succ = INDEX_EDGE_SUCC_BB (edge_list, x);
      if (pred == ENTRY_BLOCK_PTR)
 sbitmap_copy (earliest[x], antin[succ->index]);
      else
 {
   if (succ == EXIT_BLOCK_PTR)
     sbitmap_zero (earliest[x]);
   else
     {
       sbitmap_difference (difference, antin[succ->index],
      avout[pred->index]);
       sbitmap_not (temp_bitmap, antout[pred->index]);
       sbitmap_a_and_b_or_c (earliest[x], difference,
        kill[pred->index], temp_bitmap);
     }
 }
    }

  sbitmap_free (temp_bitmap);
  sbitmap_free (difference);
}
