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
 scalar_t__ IF_THEN_ELSE ; 
 scalar_t__ LABEL_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PC ; 
 scalar_t__ RETURN ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int
FUNC5 (rtx insn)
{
  rtx x = FUNC1 (insn);

  if (FUNC0 (x) != SET
      || FUNC0 (FUNC2 (x)) != PC)
    return 0;

  x = FUNC3 (x);
  if (FUNC0 (x) == LABEL_REF)
    return 1;
  else
    return (FUNC0 (x) == IF_THEN_ELSE
	    && ((FUNC0 (FUNC4 (x, 2)) == PC
		 && (FUNC0 (FUNC4 (x, 1)) == LABEL_REF
		     || FUNC0 (FUNC4 (x, 1)) == RETURN))
		|| (FUNC0 (FUNC4 (x, 1)) == PC
		    && (FUNC0 (FUNC4 (x, 2)) == LABEL_REF
			|| FUNC0 (FUNC4 (x, 2)) == RETURN))));
}