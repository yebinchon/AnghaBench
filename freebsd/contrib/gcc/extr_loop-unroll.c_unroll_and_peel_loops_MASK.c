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
struct TYPE_2__ {int decision; } ;
struct loop {TYPE_1__ lpt_decision; struct loop* outer; struct loop* inner; struct loop* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
#define  LPT_NONE 133 
#define  LPT_PEEL_COMPLETELY 132 
#define  LPT_PEEL_SIMPLE 131 
#define  LPT_UNROLL_CONSTANT 130 
#define  LPT_UNROLL_RUNTIME 129 
#define  LPT_UNROLL_STUPID 128 
 int /*<<< orphan*/  FUNC0 (struct loops*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct loops*,struct loop*) ; 
 int /*<<< orphan*/  FUNC4 (struct loops*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct loops*,struct loop*) ; 
 int /*<<< orphan*/  FUNC6 (struct loops*,struct loop*) ; 
 int /*<<< orphan*/  FUNC7 (struct loops*,struct loop*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct loops*) ; 

void
FUNC10 (struct loops *loops, int flags)
{
  struct loop *loop, *next;
  bool check;

  /* First perform complete loop peeling (it is almost surely a win,
     and affects parameters for further decision a lot).  */
  FUNC4 (loops, flags);

  /* Now decide rest of unrolling and peeling.  */
  FUNC0 (loops, flags);

  loop = loops->tree_root;
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

      check = true;
      /* And perform the appropriate transformations.  */
      switch (loop->lpt_decision.decision)
	{
	case LPT_PEEL_COMPLETELY:
	  /* Already done.  */
	  FUNC1 ();
	case LPT_PEEL_SIMPLE:
	  FUNC3 (loops, loop);
	  break;
	case LPT_UNROLL_CONSTANT:
	  FUNC5 (loops, loop);
	  break;
	case LPT_UNROLL_RUNTIME:
	  FUNC6 (loops, loop);
	  break;
	case LPT_UNROLL_STUPID:
	  FUNC7 (loops, loop);
	  break;
	case LPT_NONE:
	  check = false;
	  break;
	default:
	  FUNC1 ();
	}
      if (check)
	{
#ifdef ENABLE_CHECKING
	  verify_dominators (CDI_DOMINATORS);
	  verify_loop_structure (loops);
#endif
	}
      loop = next;
    }

  FUNC2 ();
}