#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct niter_desc {scalar_t__ const_iter; int /*<<< orphan*/  assumptions; scalar_t__ simple_p; } ;
struct TYPE_4__ {unsigned int times; int /*<<< orphan*/  decision; } ;
struct loop {unsigned int ninsns; TYPE_2__ lpt_decision; TYPE_1__* header; } ;
struct TYPE_3__ {scalar_t__ count; } ;
typedef  unsigned int HOST_WIDEST_INT ;

/* Variables and functions */
 char* HOST_WIDEST_INT_PRINT_DEC ; 
 int /*<<< orphan*/  LPT_PEEL_SIMPLE ; 
 int /*<<< orphan*/  PARAM_MAX_PEELED_INSNS ; 
 int /*<<< orphan*/  PARAM_MAX_PEEL_TIMES ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int UAP_PEEL ; 
 scalar_t__ dump_file ; 
 unsigned int FUNC1 (struct loop*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,...) ; 
 struct niter_desc* FUNC3 (struct loop*) ; 
 int FUNC4 (struct loop*) ; 

__attribute__((used)) static void
FUNC5 (struct loop *loop, int flags)
{
  unsigned npeel;
  struct niter_desc *desc;

  if (!(flags & UAP_PEEL))
    {
      /* We were not asked to, just return back silently.  */
      return;
    }

  if (dump_file)
    FUNC2 (dump_file, "\n;; Considering simply peeling loop\n");

  /* npeel = number of iterations to peel.  */
  npeel = FUNC0 (PARAM_MAX_PEELED_INSNS) / loop->ninsns;
  if (npeel > (unsigned) FUNC0 (PARAM_MAX_PEEL_TIMES))
    npeel = FUNC0 (PARAM_MAX_PEEL_TIMES);

  /* Skip big loops.  */
  if (!npeel)
    {
      if (dump_file)
	FUNC2 (dump_file, ";; Not considering loop, is too big\n");
      return;
    }

  /* Check for simple loops.  */
  desc = FUNC3 (loop);

  /* Check number of iterations.  */
  if (desc->simple_p && !desc->assumptions && desc->const_iter)
    {
      if (dump_file)
	FUNC2 (dump_file, ";; Loop iterates constant times\n");
      return;
    }

  /* Do not simply peel loops with branches inside -- it increases number
     of mispredicts.  */
  if (FUNC4 (loop) > 1)
    {
      if (dump_file)
	FUNC2 (dump_file, ";; Not peeling, contains branches\n");
      return;
    }

  if (loop->header->count)
    {
      unsigned niter = FUNC1 (loop);
      if (niter + 1 > npeel)
	{
	  if (dump_file)
	    {
	      FUNC2 (dump_file, ";; Not peeling loop, rolls too much (");
	      FUNC2 (dump_file, HOST_WIDEST_INT_PRINT_DEC,
		       (HOST_WIDEST_INT) (niter + 1));
	      FUNC2 (dump_file, " iterations > %d [maximum peelings])\n",
		       npeel);
	    }
	  return;
	}
      npeel = niter + 1;
    }
  else
    {
      /* For now we have no good heuristics to decide whether loop peeling
         will be effective, so disable it.  */
      if (dump_file)
	FUNC2 (dump_file,
		 ";; Not peeling loop, no evidence it will be profitable\n");
      return;
    }

  /* Success.  */
  loop->lpt_decision.decision = LPT_PEEL_SIMPLE;
  loop->lpt_decision.times = npeel;
      
  if (dump_file)
    FUNC2 (dump_file, ";; Decided to simply peel the loop, %d times.\n",
	     loop->lpt_decision.times);
}