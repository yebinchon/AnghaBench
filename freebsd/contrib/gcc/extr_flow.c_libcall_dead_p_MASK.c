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
struct propagate_block_info {int dummy; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ CALL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct propagate_block_info*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static int
FUNC14 (struct propagate_block_info *pbi, rtx note, rtx insn)
{
  rtx x = FUNC13 (insn);

  if (x)
    {
      rtx r = FUNC8 (x);

      if (FUNC7 (r) || FUNC1 (r) == SUBREG)
	{
	  rtx call = FUNC9 (note, 0);
	  rtx call_pat;
	  int i;

	  /* Find the call insn.  */
	  while (call != insn && !FUNC0 (call))
	    call = FUNC3 (call);

	  /* If there is none, do nothing special,
	     since ordinary death handling can understand these insns.  */
	  if (call == insn)
	    return 0;

	  /* See if the hard reg holding the value is dead.
	     If this is a PARALLEL, find the call within it.  */
	  call_pat = FUNC4 (call);
	  if (FUNC1 (call_pat) == PARALLEL)
	    {
	      for (i = FUNC11 (call_pat, 0) - 1; i >= 0; i--)
		if (FUNC1 (FUNC10 (call_pat, 0, i)) == SET
		    && FUNC1 (FUNC8 (FUNC10 (call_pat, 0, i))) == CALL)
		  break;

	      /* This may be a library call that is returning a value
		 via invisible pointer.  Do nothing special, since
		 ordinary death handling can understand these insns.  */
	      if (i < 0)
		return 0;

	      call_pat = FUNC10 (call_pat, 0, i);
	    }

	  if (! FUNC12 (pbi, call_pat, 1, FUNC6 (call)))
	    return 0;

	  while ((insn = FUNC5 (insn)) != call)
	    {
	      if (! FUNC2 (insn))
		continue;
	      if (! FUNC12 (pbi, FUNC4 (insn), 0, FUNC6 (insn)))
		return 0;
	    }
	  return 1;
	}
    }
  return 0;
}