#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct eh_region {int region_number; scalar_t__ type; int /*<<< orphan*/ * label; scalar_t__ resume; scalar_t__ post_landing_pad; struct eh_region* outer; } ;
typedef  scalar_t__ rtx ;
typedef  TYPE_2__* edge ;
typedef  TYPE_3__* basic_block ;
struct TYPE_13__ {TYPE_1__* eh; } ;
struct TYPE_12__ {int /*<<< orphan*/  count; int /*<<< orphan*/  succs; } ;
struct TYPE_11__ {int /*<<< orphan*/  count; int /*<<< orphan*/  probability; } ;
struct TYPE_10__ {int last_region_number; int /*<<< orphan*/  exc_ptr; int /*<<< orphan*/  region_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_3__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERT_CLEANUP ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  LCT_THROW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_BR_PROB_BASE ; 
 struct eh_region* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VOIDmode ; 
 TYPE_7__* cfun ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eh_region ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_2__* FUNC16 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct eh_region*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  unwind_resume_libfunc ; 

__attribute__((used)) static void
FUNC20 (void)
{
  int i;

  for (i = cfun->eh->last_region_number; i > 0; --i)
    {
      struct eh_region *region;
      struct eh_region *outer;
      rtx seq;
      rtx barrier;

      region = FUNC6 (eh_region, cfun->eh->region_array, i);
      /* Mind we don't process a region more than once.  */
      if (!region || region->region_number != i)
	continue;

      /* If there is no RESX, or it has been deleted by flow, there's
	 nothing to fix up.  */
      if (! region->resume || FUNC4 (region->resume))
	continue;

      /* Search for another landing pad in this function.  */
      for (outer = region->outer; outer ; outer = outer->outer)
	if (outer->post_landing_pad)
	  break;

      FUNC19 ();

      if (outer)
	{
	  edge e;
	  basic_block src, dest;

	  FUNC10 (outer->post_landing_pad);
	  src = FUNC1 (region->resume);
	  dest = FUNC1 (outer->post_landing_pad);
	  while (FUNC2 (src->succs) > 0)
	    FUNC17 (FUNC3 (src, 0));
	  e = FUNC16 (src, dest, 0);
	  e->probability = REG_BR_PROB_BASE;
	  e->count = src->count;
	}
      else
	{
	  FUNC11 (unwind_resume_libfunc, LCT_THROW,
			     VOIDmode, 1, cfun->eh->exc_ptr, ptr_mode);

	  /* What we just emitted was a throwing libcall, so it got a
	     barrier automatically added after it.  If the last insn in
	     the libcall sequence isn't the barrier, it's because the
	     target emits multiple insns for a call, and there are insns
	     after the actual call insn (which are redundant and would be
	     optimized away).  The barrier is inserted exactly after the
	     call insn, so let's go get that and delete the insns after
	     it, because below we need the barrier to be the last insn in
	     the sequence.  */
	  FUNC8 (FUNC5 (FUNC15 ()));
	}

      seq = FUNC14 ();
      FUNC12 ();
      barrier = FUNC9 (seq, region->resume);
      /* Avoid duplicate barrier.  */
      FUNC13 (FUNC0 (barrier));
      FUNC7 (barrier);
      FUNC7 (region->resume);

      /* ??? From tree-ssa we can wind up with catch regions whose
	 label is not instantiated, but whose resx is present.  Now
	 that we've dealt with the resx, kill the region.  */
      if (region->label == NULL && region->type == ERT_CLEANUP)
	FUNC18 (region);
    }
}