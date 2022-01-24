#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct loops {struct loop* tree_root; } ;
struct TYPE_2__ {scalar_t__ decision; } ;
struct loop {int num; TYPE_1__ lpt_decision; int /*<<< orphan*/  av_ninsns; int /*<<< orphan*/  ninsns; struct loop* inner; int /*<<< orphan*/  header; struct loop* outer; struct loop* next; } ;

/* Variables and functions */
 scalar_t__ LPT_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct loop*) ; 
 int /*<<< orphan*/  FUNC1 (struct loop*) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,int) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct loop*) ; 

__attribute__((used)) static void
FUNC9 (struct loops *loops, int flags)
{
  struct loop *loop = loops->tree_root, *next;

  while (loop->inner)
    loop = loop->inner;

  /* Scan the loops, inner ones first.  */
  while (loop != loops->tree_root)
    {
      if (loop->next)
	{
	  next = loop->next;
	  while (next->inner)
	    next = next->inner;
	}
      else
	next = loop->outer;

      loop->lpt_decision.decision = LPT_NONE;

      if (dump_file)
	FUNC6 (dump_file, "\n;; *** Considering loop %d ***\n", loop->num);

      /* Do not peel cold areas.  */
      if (!FUNC7 (loop->header))
	{
	  if (dump_file)
	    FUNC6 (dump_file, ";; Not considering loop, cold area\n");
	  loop = next;
	  continue;
	}

      /* Can the loop be manipulated?  */
      if (!FUNC1 (loop))
	{
	  if (dump_file)
	    FUNC6 (dump_file,
		     ";; Not considering loop, cannot duplicate\n");
	  loop = next;
	  continue;
	}

      /* Skip non-innermost loops.  */
      if (loop->inner)
	{
	  if (dump_file)
	    FUNC6 (dump_file, ";; Not considering loop, is not innermost\n");
	  loop = next;
	  continue;
	}

      loop->ninsns = FUNC8 (loop);
      loop->av_ninsns = FUNC0 (loop);

      /* Try transformations one by one in decreasing order of
	 priority.  */

      FUNC3 (loop, flags);
      if (loop->lpt_decision.decision == LPT_NONE)
	FUNC4 (loop, flags);
      if (loop->lpt_decision.decision == LPT_NONE)
	FUNC5 (loop, flags);
      if (loop->lpt_decision.decision == LPT_NONE)
	FUNC2 (loop, flags);

      loop = next;
    }
}