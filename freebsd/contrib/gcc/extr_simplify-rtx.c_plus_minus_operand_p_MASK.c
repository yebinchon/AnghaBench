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
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINUS ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC3 (rtx x)
{
  return FUNC1 (x) == PLUS
         || FUNC1 (x) == MINUS
	 || (FUNC1 (x) == CONST
	     && FUNC1 (FUNC2 (x, 0)) == PLUS
	     && FUNC0 (FUNC2 (FUNC2 (x, 0), 0))
	     && FUNC0 (FUNC2 (FUNC2 (x, 0), 1)));
}