#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct dom_info {int nodes; int* dfs_parent; int* dfs_order; int* key; int* next_bucket; int* bucket; int* dom; int /*<<< orphan*/  fake_exit_edge; TYPE_3__** dfs_to_bb; } ;
typedef  enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
struct TYPE_11__ {scalar_t__ index; } ;
typedef  TYPE_1__ edge_iterator ;
typedef  TYPE_2__* edge ;
typedef  TYPE_3__* basic_block ;
struct TYPE_13__ {size_t index; int /*<<< orphan*/  preds; int /*<<< orphan*/  succs; } ;
struct TYPE_12__ {TYPE_3__* src; TYPE_3__* dest; } ;
typedef  int TBB ;

/* Variables and functions */
 TYPE_3__* ENTRY_BLOCK_PTR ; 
 TYPE_3__* EXIT_BLOCK_PTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_2__* FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct dom_info*,int) ; 
 size_t last_basic_block ; 
 int /*<<< orphan*/  FUNC6 (struct dom_info*,int,int) ; 

__attribute__((used)) static void
FUNC7 (struct dom_info *di, enum cdi_direction reverse)
{
  TBB v, w, k, par;
  basic_block en_block;
  edge_iterator ei, einext;

  if (reverse)
    en_block = EXIT_BLOCK_PTR;
  else
    en_block = ENTRY_BLOCK_PTR;

  /* Go backwards in DFS order, to first look at the leafs.  */
  v = di->nodes;
  while (v > 1)
    {
      basic_block bb = di->dfs_to_bb[v];
      edge e;

      par = di->dfs_parent[v];
      k = v;

      ei = (reverse) ? FUNC4 (bb->succs) : FUNC4 (bb->preds);

      if (reverse)
	{
	  /* If this block has a fake edge to exit, process that first.  */
	  if (FUNC0 (di->fake_exit_edge, bb->index))
	    {
	      einext = ei;
	      einext.index = 0;
	      goto do_fake_exit_edge;
	    }
	}

      /* Search all direct predecessors for the smallest node with a path
         to them.  That way we have the smallest node with also a path to
         us only over nodes behind us.  In effect we search for our
         semidominator.  */
      while (!FUNC2 (ei))
	{
	  TBB k1;
	  basic_block b;

	  e = FUNC1 (ei);
	  b = (reverse) ? e->dest : e->src;
	  einext = ei;
	  FUNC3 (&einext);

	  if (b == en_block)
	    {
	    do_fake_exit_edge:
	      k1 = di->dfs_order[last_basic_block];
	    }
	  else
	    k1 = di->dfs_order[b->index];

	  /* Call eval() only if really needed.  If k1 is above V in DFS tree,
	     then we know, that eval(k1) == k1 and key[k1] == k1.  */
	  if (k1 > v)
	    k1 = di->key[FUNC5 (di, k1)];
	  if (k1 < k)
	    k = k1;

	  ei = einext;
	}

      di->key[v] = k;
      FUNC6 (di, par, v);
      di->next_bucket[v] = di->bucket[k];
      di->bucket[k] = v;

      /* Transform semidominators into dominators.  */
      for (w = di->bucket[par]; w; w = di->next_bucket[w])
	{
	  k = FUNC5 (di, w);
	  if (di->key[k] < di->key[w])
	    di->dom[w] = k;
	  else
	    di->dom[w] = par;
	}
      /* We don't need to cleanup next_bucket[].  */
      di->bucket[par] = 0;
      v--;
    }

  /* Explicitly define the dominators.  */
  di->dom[1] = 0;
  for (v = 2; v <= di->nodes; v++)
    if (di->dom[v] != di->key[v])
      di->dom[v] = di->dom[di->dom[v]];
}