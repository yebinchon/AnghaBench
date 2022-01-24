#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sjlj_lp_info {int /*<<< orphan*/  dispatch_index; int /*<<< orphan*/  directly_reachable; } ;
struct eh_region {int /*<<< orphan*/  post_landing_pad; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_2__* edge ;
typedef  TYPE_3__* basic_block ;
struct TYPE_11__ {TYPE_1__* eh; } ;
struct TYPE_10__ {int /*<<< orphan*/  count; int /*<<< orphan*/  next_bb; } ;
struct TYPE_9__ {int /*<<< orphan*/  probability; int /*<<< orphan*/  count; } ;
struct TYPE_8__ {int last_region_number; int /*<<< orphan*/  region_array; int /*<<< orphan*/  filter; int /*<<< orphan*/  exc_ptr; int /*<<< orphan*/  sjlj_fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  REG_BR_PROB_BASE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNITS_PER_WORD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_7__* cfun ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eh_region ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  integer_type_node ; 
 TYPE_2__* FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ptr_mode ; 
 scalar_t__ sjlj_fc_call_site_ofs ; 
 scalar_t__ sjlj_fc_data_ofs ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ word_mode ; 

__attribute__((used)) static void
FUNC16 (rtx dispatch_label, struct sjlj_lp_info *lp_info)
{
  int i, first_reachable;
  rtx mem, dispatch, seq, fc;
  rtx before;
  basic_block bb;
  edge e;

  fc = cfun->eh->sjlj_fc;

  FUNC15 ();

  FUNC8 (dispatch_label);

#ifndef DONT_USE_BUILTIN_SETJMP
  FUNC12 (dispatch_label);
#endif

  /* Load up dispatch index, exc_ptr and filter values from the
     function context.  */
  mem = FUNC3 (fc, FUNC1 (integer_type_node),
			sjlj_fc_call_site_ofs);
  dispatch = FUNC6 (mem);

  mem = FUNC3 (fc, word_mode, sjlj_fc_data_ofs);
  if (word_mode != ptr_mode)
    {
#ifdef POINTERS_EXTEND_UNSIGNED
      mem = convert_memory_address (ptr_mode, mem);
#else
      mem = FUNC5 (ptr_mode, mem, 0);
#endif
    }
  FUNC9 (cfun->eh->exc_ptr, mem);

  mem = FUNC3 (fc, word_mode, sjlj_fc_data_ofs + UNITS_PER_WORD);
  FUNC9 (cfun->eh->filter, mem);

  /* Jump to one of the directly reachable regions.  */
  /* ??? This really ought to be using a switch statement.  */

  first_reachable = 0;
  for (i = cfun->eh->last_region_number; i > 0; --i)
    {
      if (! lp_info[i].directly_reachable)
	continue;

      if (! first_reachable)
	{
	  first_reachable = i;
	  continue;
	}

      FUNC7 (dispatch, FUNC0 (lp_info[i].dispatch_index),
			       EQ, NULL_RTX, FUNC1 (integer_type_node), 0,
	                       ((struct eh_region *)FUNC2 (eh_region, cfun->eh->region_array, i))
				->post_landing_pad);
    }

  seq = FUNC13 ();
  FUNC11 ();

  before = (((struct eh_region *)FUNC2 (eh_region, cfun->eh->region_array, first_reachable))
	    ->post_landing_pad);

  bb = FUNC10 (seq, before);
  e = FUNC14 (bb, bb->next_bb, EDGE_FALLTHRU);
  e->count = bb->count;
  e->probability = REG_BR_PROB_BASE;
}