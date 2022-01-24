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
struct s390_address {int /*<<< orphan*/  disp; int /*<<< orphan*/  indx; scalar_t__ literal_pool; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_LONG_DISPLACEMENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct s390_address*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9 (const char *str, rtx op)
{
  struct s390_address addr;
  char c = str[0];

  /* Check for offsettable variants of memory constraints.  */
  if (c == 'A')
    {
      /* Only accept non-volatile MEMs.  */
      if (!FUNC1 (op) || FUNC2 (op))
	return 0;

      if ((reload_completed || reload_in_progress)
	  ? !FUNC4 (op) : !FUNC5 (op))
	return 0;

      c = str[1];
    }

  /* Check for non-literal-pool variants of memory constraints.  */
  else if (c == 'B')
    {
      if (FUNC0 (op) != MEM)
	return 0;
      if (!FUNC6 (FUNC3 (op, 0), &addr))
	return 0;
      if (addr.literal_pool)
	return 0;

      c = str[1];
    }

  switch (c)
    {
    case 'Q':
      if (FUNC0 (op) != MEM)
	return 0;
      if (!FUNC6 (FUNC3 (op, 0), &addr))
	return 0;
      if (addr.indx)
	return 0;

      if (TARGET_LONG_DISPLACEMENT)
	{
	  if (!FUNC8 (addr.disp))
	    return 0;
	}
      break;

    case 'R':
      if (FUNC0 (op) != MEM)
	return 0;

      if (TARGET_LONG_DISPLACEMENT)
	{
	  if (!FUNC6 (FUNC3 (op, 0), &addr))
	    return 0;
	  if (!FUNC8 (addr.disp))
	    return 0;
	}
      break;

    case 'S':
      if (!TARGET_LONG_DISPLACEMENT)
	return 0;
      if (FUNC0 (op) != MEM)
	return 0;
      if (!FUNC6 (FUNC3 (op, 0), &addr))
	return 0;
      if (addr.indx)
	return 0;
      if (FUNC8 (addr.disp))
	return 0;
      break;

    case 'T':
      if (!TARGET_LONG_DISPLACEMENT)
	return 0;
      if (FUNC0 (op) != MEM)
	return 0;
      /* Any invalid address here will be fixed up by reload,
	 so accept it for the most generic constraint.  */
      if (FUNC6 (FUNC3 (op, 0), &addr)
	  && FUNC8 (addr.disp))
	return 0;
      break;

    case 'U':
      if (TARGET_LONG_DISPLACEMENT)
	{
	  if (!FUNC6 (op, &addr))
	    return 0;
	  if (!FUNC8 (addr.disp))
	    return 0;
	}
      break;

    case 'W':
      if (!TARGET_LONG_DISPLACEMENT)
	return 0;
      /* Any invalid address here will be fixed up by reload,
	 so accept it for the most generic constraint.  */
      if (FUNC6 (op, &addr)
	  && FUNC8 (addr.disp))
	return 0;
      break;

    case 'Y':
      /* Simply check for the basic form of a shift count.  Reload will
	 take care of making sure we have a proper base register.  */
      if (!FUNC7 (op, NULL, NULL))
	return 0;
      break;

    default:
      return 0;
    }

  return 1;
}