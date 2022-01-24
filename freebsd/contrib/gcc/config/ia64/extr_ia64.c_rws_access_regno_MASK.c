#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct reg_flags {scalar_t__ is_or; scalar_t__ is_and; scalar_t__ is_branch; scalar_t__ is_write; } ;
struct TYPE_4__ {int write_count; int first_pred; scalar_t__ written_by_or; scalar_t__ written_by_and; int /*<<< orphan*/  written_by_fp; } ;

/* Variables and functions */
 int AR_PFS_REGNUM ; 
 scalar_t__ BR_REGS ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PR_REGS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* rws_insn ; 
 TYPE_1__* rws_sum ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,struct reg_flags,int) ; 

__attribute__((used)) static int
FUNC5 (int regno, struct reg_flags flags, int pred)
{
  int need_barrier = 0;

  FUNC2 (regno < NUM_REGS);

  if (! FUNC0 (regno))
    flags.is_and = flags.is_or = 0;

  if (flags.is_write)
    {
      int write_count;

      /* One insn writes same reg multiple times?  */
      FUNC2 (!rws_insn[regno].write_count);

      /* Update info for current instruction.  */
      FUNC4 (rws_insn, regno, flags, pred);
      write_count = rws_sum[regno].write_count;

      switch (write_count)
	{
	case 0:
	  /* The register has not been written yet.  */
	  FUNC4 (rws_sum, regno, flags, pred);
	  break;

	case 1:
	  /* The register has been written via a predicate.  If this is
	     not a complementary predicate, then we need a barrier.  */
	  /* ??? This assumes that P and P+1 are always complementary
	     predicates for P even.  */
	  if (flags.is_and && rws_sum[regno].written_by_and)
	    ;
	  else if (flags.is_or && rws_sum[regno].written_by_or)
	    ;
	  else if ((rws_sum[regno].first_pred ^ 1) != pred)
	    need_barrier = 1;
	  FUNC4 (rws_sum, regno, flags, pred);
	  break;

	case 2:
	  /* The register has been unconditionally written already.  We
	     need a barrier.  */
	  if (flags.is_and && rws_sum[regno].written_by_and)
	    ;
	  else if (flags.is_or && rws_sum[regno].written_by_or)
	    ;
	  else
	    need_barrier = 1;
	  rws_sum[regno].written_by_and = flags.is_and;
	  rws_sum[regno].written_by_or = flags.is_or;
	  break;

	default:
	  FUNC3 ();
	}
    }
  else
    {
      if (flags.is_branch)
	{
	  /* Branches have several RAW exceptions that allow to avoid
	     barriers.  */

	  if (FUNC1 (regno) == BR_REGS || regno == AR_PFS_REGNUM)
	    /* RAW dependencies on branch regs are permissible as long
	       as the writer is a non-branch instruction.  Since we
	       never generate code that uses a branch register written
	       by a branch instruction, handling this case is
	       easy.  */
	    return 0;

	  if (FUNC1 (regno) == PR_REGS
	      && ! rws_sum[regno].written_by_fp)
	    /* The predicates of a branch are available within the
	       same insn group as long as the predicate was written by
	       something other than a floating-point instruction.  */
	    return 0;
	}

      if (flags.is_and && rws_sum[regno].written_by_and)
	return 0;
      if (flags.is_or && rws_sum[regno].written_by_or)
	return 0;

      switch (rws_sum[regno].write_count)
	{
	case 0:
	  /* The register has not been written yet.  */
	  break;

	case 1:
	  /* The register has been written via a predicate.  If this is
	     not a complementary predicate, then we need a barrier.  */
	  /* ??? This assumes that P and P+1 are always complementary
	     predicates for P even.  */
	  if ((rws_sum[regno].first_pred ^ 1) != pred)
	    need_barrier = 1;
	  break;

	case 2:
	  /* The register has been unconditionally written already.  We
	     need a barrier.  */
	  need_barrier = 1;
	  break;

	default:
	  FUNC3 ();
	}
    }

  return need_barrier;
}