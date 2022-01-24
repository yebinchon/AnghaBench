#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct occr {int /*<<< orphan*/  deleted_p; struct occr* next; } ;
struct expr {scalar_t__ reaching_reg; int bitmap_index; struct occr* antic_occr; } ;
struct edge_list {int dummy; } ;
typedef  int /*<<< orphan*/  sbitmap ;
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_14__ {int index; } ;
struct TYPE_13__ {scalar_t__ n_elems; } ;
struct TYPE_12__ {int size; int* elms; } ;
struct TYPE_11__ {int index; } ;
struct TYPE_10__ {int flags; } ;
typedef  int SBITMAP_ELT_TYPE ;

/* Variables and functions */
 int EDGE_ABNORMAL ; 
 TYPE_1__* FUNC0 (struct edge_list*,int) ; 
 TYPE_2__* FUNC1 (struct edge_list*,int) ; 
 TYPE_7__* FUNC2 (struct edge_list*,int) ; 
 scalar_t__ NULL_RTX ; 
 int FUNC3 (struct edge_list*) ; 
 scalar_t__ SBITMAP_ELT_BITS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ dump_file ; 
 TYPE_6__ expr_hash_table ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int,...) ; 
 int /*<<< orphan*/  gcse_create_count ; 
 int /*<<< orphan*/  FUNC7 (struct expr*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_3__** pre_insert_map ; 
 int /*<<< orphan*/  FUNC9 (struct expr*) ; 
 int /*<<< orphan*/ * FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct expr*) ; 

__attribute__((used)) static int
FUNC14 (struct edge_list *edge_list, struct expr **index_map)
{
  int e, i, j, num_edges, set_size, did_insert = 0;
  sbitmap *inserted;

  /* Where PRE_INSERT_MAP is nonzero, we add the expression on that edge
     if it reaches any of the deleted expressions.  */

  set_size = pre_insert_map[0]->size;
  num_edges = FUNC3 (edge_list);
  inserted = FUNC10 (num_edges, expr_hash_table.n_elems);
  FUNC12 (inserted, num_edges);

  for (e = 0; e < num_edges; e++)
    {
      int indx;
      basic_block bb = FUNC1 (edge_list, e);

      for (i = indx = 0; i < set_size; i++, indx += SBITMAP_ELT_BITS)
	{
	  SBITMAP_ELT_TYPE insert = pre_insert_map[e]->elms[i];

	  for (j = indx; insert && j < (int) expr_hash_table.n_elems; j++, insert >>= 1)
	    if ((insert & 1) != 0 && index_map[j]->reaching_reg != NULL_RTX)
	      {
		struct expr *expr = index_map[j];
		struct occr *occr;

		/* Now look at each deleted occurrence of this expression.  */
		for (occr = expr->antic_occr; occr != NULL; occr = occr->next)
		  {
		    if (! occr->deleted_p)
		      continue;

		    /* Insert this expression on this edge if it would
		       reach the deleted occurrence in BB.  */
		    if (!FUNC5 (inserted[e], j))
		      {
			rtx insn;
			edge eg = FUNC0 (edge_list, e);

			/* We can't insert anything on an abnormal and
			   critical edge, so we insert the insn at the end of
			   the previous block. There are several alternatives
			   detailed in Morgans book P277 (sec 10.5) for
			   handling this situation.  This one is easiest for
			   now.  */

			if (eg->flags & EDGE_ABNORMAL)
			  FUNC7 (index_map[j], bb, 0);
			else
			  {
			    insn = FUNC9 (index_map[j]);
			    FUNC8 (insn, eg);
			  }

			if (dump_file)
			  {
			    FUNC6 (dump_file, "PRE/HOIST: edge (%d,%d), ",
				     bb->index,
				     FUNC2 (edge_list, e)->index);
			    FUNC6 (dump_file, "copy expression %d\n",
				     expr->bitmap_index);
			  }

			FUNC13 (expr);
			FUNC4 (inserted[e], j);
			did_insert = 1;
			gcse_create_count++;
		      }
		  }
	      }
	}
    }

  FUNC11 (inserted);
  return did_insert;
}