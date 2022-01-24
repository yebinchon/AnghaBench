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
struct loops {int num; struct loop** parray; } ;
struct TYPE_2__ {scalar_t__ decision; } ;
struct loop {int num; TYPE_1__ lpt_decision; int /*<<< orphan*/  ninsns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 scalar_t__ LPT_NONE ; 
 scalar_t__ LPT_PEEL_COMPLETELY ; 
 int /*<<< orphan*/  FUNC0 (struct loop*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct loop*,int) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*) ; 
 int /*<<< orphan*/  FUNC4 (struct loops*,struct loop*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct loops*) ; 

__attribute__((used)) static void
FUNC7 (struct loops *loops, int flags)
{
  struct loop *loop;
  unsigned i;

  /* Scan the loops, the inner ones first.  */
  for (i = loops->num - 1; i > 0; i--)
    {
      loop = loops->parray[i];
      if (!loop)
	continue;

      loop->lpt_decision.decision = LPT_NONE;

      if (dump_file)
	FUNC2 (dump_file,
		 "\n;; *** Considering loop %d for complete peeling ***\n",
		 loop->num);

      loop->ninsns = FUNC3 (loop);

      FUNC1 (loop, flags);
      if (loop->lpt_decision.decision == LPT_NONE)
	FUNC0 (loop, flags);

      if (loop->lpt_decision.decision == LPT_PEEL_COMPLETELY)
	{
	  FUNC4 (loops, loop);
#ifdef ENABLE_CHECKING
	  verify_dominators (CDI_DOMINATORS);
	  verify_loop_structure (loops);
#endif
	}
    }
}