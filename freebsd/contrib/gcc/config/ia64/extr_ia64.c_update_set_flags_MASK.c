#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct reg_flags {int is_fp; int is_and; int is_or; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int AND ; 
#define  CALL 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  IF_THEN_ELSE 128 
 int IOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (rtx x, struct reg_flags *pflags)
{
  rtx src = FUNC4 (x);

  switch (FUNC1 (src))
    {
    case CALL:
      return;

    case IF_THEN_ELSE:
      /* There are four cases here:
	 (1) The destination is (pc), in which case this is a branch,
	 nothing here applies.
	 (2) The destination is ar.lc, in which case this is a
	 doloop_end_internal,
	 (3) The destination is an fp register, in which case this is
	 an fselect instruction.
	 (4) The condition has (unspec [(reg)] UNSPEC_LDC), in which case 
	 this is a check load.
	 In all cases, nothing we do in this function applies.  */
      return;

    default:
      if (FUNC0 (src)
	  && FUNC3 (FUNC2 (FUNC5 (src, 0))))
	/* Set pflags->is_fp to 1 so that we know we're dealing
	   with a floating point comparison when processing the
	   destination of the SET.  */
	pflags->is_fp = 1;

      /* Discover if this is a parallel comparison.  We only handle
	 and.orcm and or.andcm at present, since we must retain a
	 strict inverse on the predicate pair.  */
      else if (FUNC1 (src) == AND)
	pflags->is_and = 1;
      else if (FUNC1 (src) == IOR)
	pflags->is_or = 1;

      break;
    }
}