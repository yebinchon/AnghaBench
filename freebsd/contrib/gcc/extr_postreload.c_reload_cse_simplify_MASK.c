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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC15 (rtx insn, rtx testreg)
{
  rtx body = FUNC1 (insn);

  if (FUNC0 (body) == SET)
    {
      int count = 0;

      /* Simplify even if we may think it is a no-op.
         We may think a memory load of a value smaller than WORD_SIZE
         is redundant because we haven't taken into account possible
         implicit extension.  reload_cse_simplify_set() will bring
         this out, so it's safer to simplify before we delete.  */
      count += FUNC14 (body, insn);

      if (!count && FUNC12 (body))
	{
	  rtx value = FUNC4 (body);
	  if (FUNC3 (value)
	      && ! FUNC2 (value))
	    value = 0;
	  FUNC11 (insn);
	  return;
	}

      if (count > 0)
	FUNC8 ();
      else
	FUNC13 (insn, testreg);
    }
  else if (FUNC0 (body) == PARALLEL)
    {
      int i;
      int count = 0;
      rtx value = NULL_RTX;

      /* Registers mentioned in the clobber list for an asm cannot be reused
	 within the body of the asm.  Invalidate those registers now so that
	 we don't try to substitute values for them.  */
      if (FUNC9 (body) >= 0)
	{
	  for (i = FUNC7 (body, 0) - 1; i >= 0; --i)
	    {
	      rtx part = FUNC6 (body, 0, i);
	      if (FUNC0 (part) == CLOBBER && FUNC3 (FUNC5 (part, 0)))
		FUNC10 (FUNC5 (part, 0));
	    }
	}

      /* If every action in a PARALLEL is a noop, we can delete
	 the entire PARALLEL.  */
      for (i = FUNC7 (body, 0) - 1; i >= 0; --i)
	{
	  rtx part = FUNC6 (body, 0, i);
	  if (FUNC0 (part) == SET)
	    {
	      if (! FUNC12 (part))
		break;
	      if (FUNC3 (FUNC4 (part))
		  && FUNC2 (FUNC4 (part)))
		{
		  if (value)
		    break;
		  value = FUNC4 (part);
		}
	    }
	  else if (FUNC0 (part) != CLOBBER)
	    break;
	}

      if (i < 0)
	{
	  FUNC11 (insn);
	  /* We're done with this insn.  */
	  return;
	}

      /* It's not a no-op, but we can try to simplify it.  */
      for (i = FUNC7 (body, 0) - 1; i >= 0; --i)
	if (FUNC0 (FUNC6 (body, 0, i)) == SET)
	  count += FUNC14 (FUNC6 (body, 0, i), insn);

      if (count > 0)
	FUNC8 ();
      else
	FUNC13 (insn, testreg);
    }
}