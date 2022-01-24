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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10 (rtx x, enum rtx_code outer)
{
  return ((FUNC0 (x) == SUBREG
	   && FUNC5 (FUNC6 (x))
	   && FUNC3 (FUNC1 (x)) == MODE_INT
	   && FUNC3 (FUNC1 (FUNC6 (x))) == MODE_INT
	   && (FUNC4 (FUNC1 (x))
	       < FUNC4 (FUNC1 (FUNC6 (x))))
	   && FUNC9 (x)
	   && FUNC7 (FUNC2 (FUNC1 (x)),
				     FUNC2 (FUNC1 (FUNC6 (x)))))
	  ? 0
	  : FUNC8 (x, outer) * 2);
}