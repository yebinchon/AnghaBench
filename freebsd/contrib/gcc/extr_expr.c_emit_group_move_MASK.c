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
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6 (rtx dst, rtx src)
{
  int i;

  FUNC5 (FUNC0 (src) == PARALLEL
	      && FUNC0 (dst) == PARALLEL
	      && FUNC3 (src, 0) == FUNC3 (dst, 0));

  /* Skip first entry if NULL.  */
  for (i = FUNC1 (FUNC2 (src, 0, 0), 0) ? 0 : 1; i < FUNC3 (src, 0); i++)
    FUNC4 (FUNC1 (FUNC2 (dst, 0, i), 0),
		    FUNC1 (FUNC2 (src, 0, i), 0));
}