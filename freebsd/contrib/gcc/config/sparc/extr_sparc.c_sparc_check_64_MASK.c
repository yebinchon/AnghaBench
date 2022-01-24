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
#define  CALL_INSN 132 
#define  CODE_LABEL 131 
 scalar_t__ DImode ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  INSN 130 
#define  JUMP_INSN 129 
#define  NOTE 128 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int REG ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int SET ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 scalar_t__ flag_expensive_optimizations ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__) ; 

int
FUNC13 (rtx x, rtx insn)
{
  /* If a register is set only once it is safe to ignore insns this
     code does not know how to handle.  The loop will either recognize
     the single set and return the correct value or fail to recognize
     it and return 0.  */
  int set_once = 0;
  rtx y = x;

  FUNC7 (FUNC0 (x) == REG);

  if (FUNC1 (x) == DImode)
    y = FUNC8 (SImode, FUNC4 (x) + WORDS_BIG_ENDIAN);

  if (flag_expensive_optimizations
      && FUNC5 (FUNC4 (y)) == 1)
    set_once = 1;

  if (insn == 0)
    {
      if (set_once)
	insn = FUNC9 ();
      else
	return 0;
    }

  while ((insn = FUNC3 (insn)))
    {
      switch (FUNC0 (insn))
	{
	case JUMP_INSN:
	case NOTE:
	  break;
	case CODE_LABEL:
	case CALL_INSN:
	default:
	  if (! set_once)
	    return 0;
	  break;
	case INSN:
	  {
	    rtx pat = FUNC2 (insn);
	    if (FUNC0 (pat) != SET)
	      return 0;
	    if (FUNC11 (x, FUNC6 (pat)))
	      return FUNC12 (insn);
	    if (y && FUNC11 (y, FUNC6 (pat)))
	      return FUNC12 (insn);
	    if (FUNC10 (FUNC6 (pat), y))
	      return 0;
	  }
	}
    }
  return 0;
}