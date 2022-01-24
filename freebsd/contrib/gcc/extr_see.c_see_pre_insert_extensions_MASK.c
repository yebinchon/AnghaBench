#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct see_pre_extension_expr {int bitmap_index; int /*<<< orphan*/  se_insn; } ;
typedef  int /*<<< orphan*/ * rtx ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_12__ {int index; } ;
struct TYPE_11__ {int size; int* elms; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {int flags; } ;
typedef  int SBITMAP_ELT_TYPE ;

/* Variables and functions */
 int EDGE_ABNORMAL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ SBITMAP_ELT_BITS ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  edge_list ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_3__** pre_insert_map ; 
 int /*<<< orphan*/  see_pre_extension_hash ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static bool
FUNC16 (struct see_pre_extension_expr **index_map)
{
  int num_edges = FUNC5 (edge_list);
  int set_size = pre_insert_map[0]->size;
  size_t pre_extension_num = FUNC12 (see_pre_extension_hash);

  int did_insert = 0;
  int e;
  int i;
  int j;

  for (e = 0; e < num_edges; e++)
    {
      int indx;
      basic_block bb = FUNC1 (edge_list, e);

      for (i = indx = 0; i < set_size; i++, indx += SBITMAP_ELT_BITS)
	{
	  SBITMAP_ELT_TYPE insert = pre_insert_map[e]->elms[i];

	  for (j = indx; insert && j < (int) pre_extension_num;
	       j++, insert >>= 1)
	    if (insert & 1)
	      {
		struct see_pre_extension_expr *expr = index_map[j];
		int idx = expr->bitmap_index;
		rtx se_insn = NULL;
		edge eg = FUNC0 (edge_list, e);

		FUNC15 ();
		FUNC7 (FUNC6 (expr->se_insn));
		se_insn = FUNC11 ();
		FUNC8 ();

		if (eg->flags & EDGE_ABNORMAL)
		  {
		    rtx new_insn = NULL;

		    new_insn = FUNC13 (se_insn, bb);
		    FUNC10 (new_insn && FUNC3 (new_insn));

		    if (dump_file)
		      {
			FUNC9 (dump_file,
				 "PRE: end of bb %d, insn %d, ",
				 bb->index, FUNC4 (new_insn));
			FUNC9 (dump_file,
				 "inserting expression %d\n", idx);
		      }
		  }
		else
		  {
		    FUNC14 (se_insn, eg);

		    if (dump_file)
		      {
			FUNC9 (dump_file, "PRE: edge (%d,%d), ",
				 bb->index,
				 FUNC2 (edge_list, e)->index);
			FUNC9 (dump_file, "inserting expression %d\n", idx);
		      }
		  }
		did_insert = true;
	      }
	}
    }
  return did_insert;
}