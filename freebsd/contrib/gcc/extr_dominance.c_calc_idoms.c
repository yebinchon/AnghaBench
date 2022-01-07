
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct dom_info {int nodes; int* dfs_parent; int* dfs_order; int* key; int* next_bucket; int* bucket; int* dom; int fake_exit_edge; TYPE_3__** dfs_to_bb; } ;
typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
struct TYPE_11__ {scalar_t__ index; } ;
typedef TYPE_1__ edge_iterator ;
typedef TYPE_2__* edge ;
typedef TYPE_3__* basic_block ;
struct TYPE_13__ {size_t index; int preds; int succs; } ;
struct TYPE_12__ {TYPE_3__* src; TYPE_3__* dest; } ;
typedef int TBB ;


 TYPE_3__* ENTRY_BLOCK_PTR ;
 TYPE_3__* EXIT_BLOCK_PTR ;
 scalar_t__ bitmap_bit_p (int ,size_t) ;
 TYPE_2__* ei_edge (TYPE_1__) ;
 int ei_end_p (TYPE_1__) ;
 int ei_next (TYPE_1__*) ;
 TYPE_1__ ei_start (int ) ;
 size_t eval (struct dom_info*,int) ;
 size_t last_basic_block ;
 int link_roots (struct dom_info*,int,int) ;

__attribute__((used)) static void
calc_idoms (struct dom_info *di, enum cdi_direction reverse)
{
  TBB v, w, k, par;
  basic_block en_block;
  edge_iterator ei, einext;

  if (reverse)
    en_block = EXIT_BLOCK_PTR;
  else
    en_block = ENTRY_BLOCK_PTR;


  v = di->nodes;
  while (v > 1)
    {
      basic_block bb = di->dfs_to_bb[v];
      edge e;

      par = di->dfs_parent[v];
      k = v;

      ei = (reverse) ? ei_start (bb->succs) : ei_start (bb->preds);

      if (reverse)
 {

   if (bitmap_bit_p (di->fake_exit_edge, bb->index))
     {
       einext = ei;
       einext.index = 0;
       goto do_fake_exit_edge;
     }
 }





      while (!ei_end_p (ei))
 {
   TBB k1;
   basic_block b;

   e = ei_edge (ei);
   b = (reverse) ? e->dest : e->src;
   einext = ei;
   ei_next (&einext);

   if (b == en_block)
     {
     do_fake_exit_edge:
       k1 = di->dfs_order[last_basic_block];
     }
   else
     k1 = di->dfs_order[b->index];



   if (k1 > v)
     k1 = di->key[eval (di, k1)];
   if (k1 < k)
     k = k1;

   ei = einext;
 }

      di->key[v] = k;
      link_roots (di, par, v);
      di->next_bucket[v] = di->bucket[k];
      di->bucket[k] = v;


      for (w = di->bucket[par]; w; w = di->next_bucket[w])
 {
   k = eval (di, w);
   if (di->key[k] < di->key[w])
     di->dom[w] = k;
   else
     di->dom[w] = par;
 }

      di->bucket[par] = 0;
      v--;
    }


  di->dom[1] = 0;
  for (v = 2; v <= di->nodes; v++)
    if (di->dom[v] != di->key[v])
      di->dom[v] = di->dom[di->dom[v]];
}
