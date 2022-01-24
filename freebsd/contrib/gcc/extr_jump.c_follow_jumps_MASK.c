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
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ ADDR_VEC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ RETURN ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ flag_test_coverage ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  reload_completed ; 

rtx
FUNC11 (rtx label)
{
  rtx insn;
  rtx next;
  rtx value = label;
  int depth;

  for (depth = 0;
       (depth < 10
	&& (insn = FUNC9 (value)) != 0
	&& FUNC3 (insn)
	&& ((FUNC2 (insn) != 0 && FUNC8 (insn)
	     && FUNC10 (insn))
	    || FUNC1 (FUNC7 (insn)) == RETURN)
	&& (next = FUNC4 (insn))
	&& FUNC0 (next));
       depth++)
    {
      rtx tem;
      if (!reload_completed && flag_test_coverage)
	{
	  /* ??? Optional.  Disables some optimizations, but makes
	     gcov output more accurate with -O.  */
	  for (tem = value; tem != insn; tem = FUNC4 (tem))
	    if (FUNC6 (tem) && FUNC5 (tem) > 0)
	      return value;
	}

      /* If we have found a cycle, make the insn jump to itself.  */
      if (FUNC2 (insn) == label)
	return label;

      tem = FUNC9 (FUNC2 (insn));
      if (tem && (FUNC1 (FUNC7 (tem)) == ADDR_VEC
		  || FUNC1 (FUNC7 (tem)) == ADDR_DIFF_VEC))
	break;

      value = FUNC2 (insn);
    }
  if (depth == 10)
    return label;
  return value;
}