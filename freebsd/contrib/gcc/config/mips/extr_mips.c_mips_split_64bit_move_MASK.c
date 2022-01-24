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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10 (rtx dest, rtx src)
{
  if (FUNC0 (dest))
    {
      /* Loading an FPR from memory or from GPRs.  */
      FUNC3 (FUNC6 (FUNC2 (dest), FUNC8 (src, 0)));
      FUNC3 (FUNC5 (dest, FUNC8 (src, 1),
				   FUNC2 (dest)));
    }
  else if (FUNC0 (src))
    {
      /* Storing an FPR into memory or GPRs.  */
      FUNC4 (FUNC8 (dest, 0), FUNC8 (src, 0));
      FUNC3 (FUNC7 (FUNC8 (dest, 1), src));
    }
  else
    {
      /* The operation can be split into two normal moves.  Decide in
	 which order to do them.  */
      rtx low_dest;

      low_dest = FUNC8 (dest, 0);
      if (FUNC1 (low_dest)
	  && FUNC9 (low_dest, src))
	{
	  FUNC4 (FUNC8 (dest, 1), FUNC8 (src, 1));
	  FUNC4 (low_dest, FUNC8 (src, 0));
	}
      else
	{
	  FUNC4 (low_dest, FUNC8 (src, 0));
	  FUNC4 (FUNC8 (dest, 1), FUNC8 (src, 1));
	}
    }
}