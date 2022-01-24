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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  CONST_DOUBLE 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 128 
 int DImode ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,long) ; 
 int SFmode ; 
 int /*<<< orphan*/  TARGET_32BIT ; 
 int VOIDmode ; 
 int /*<<< orphan*/  WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 

int
FUNC10 (rtx op, enum machine_mode mode)
{
  HOST_WIDE_INT low, high;

  switch (FUNC2 (op))
    {
    case CONST_INT:
#if HOST_BITS_PER_WIDE_INT == 64
      if ((INTVAL (op) >> 31) != 0 && (INTVAL (op) >> 31) != -1
	  && mask64_operand (op, mode))
	return 2;
      else
#endif
	return FUNC9 (FUNC3 (op));

      case CONST_DOUBLE:
	if (mode == SFmode)
	  {
	    long l;
	    REAL_VALUE_TYPE rv;

	    FUNC4 (rv, op);
	    FUNC6 (rv, l);
	    return FUNC9 ((HOST_WIDE_INT) l);
	  }

	if (mode == VOIDmode || mode == DImode)
	  {
	    high = FUNC0 (op);
	    low  = FUNC1 (op);
	  }
	else
	  {
	    long l[2];
	    REAL_VALUE_TYPE rv;

	    FUNC4 (rv, op);
	    FUNC5 (rv, l);
	    high = l[WORDS_BIG_ENDIAN == 0];
	    low  = l[WORDS_BIG_ENDIAN != 0];
	  }

	if (TARGET_32BIT)
	  return (FUNC9 (low)
		  + FUNC9 (high));
	else
	  {
	    if ((high == 0 && low >= 0)
		|| (high == -1 && low < 0))
	      return FUNC9 (low);

	    else if (FUNC8 (op, mode))
	      return 2;

	    else if (low == 0)
	      return FUNC9 (high) + 1;

	    else
	      return (FUNC9 (high)
		      + FUNC9 (low) + 1);
	  }

    default:
      FUNC7 ();
    }
}