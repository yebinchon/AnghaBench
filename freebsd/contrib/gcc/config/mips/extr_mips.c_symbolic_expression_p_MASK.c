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
 scalar_t__ CONST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4 (rtx x)
{
  if (FUNC1 (x) == SYMBOL_REF)
    return 1;

  if (FUNC1 (x) == CONST)
    return FUNC4 (FUNC3 (x, 0));

  if (FUNC2 (x))
    return FUNC4 (FUNC3 (x, 0));

  if (FUNC0 (x))
    return (FUNC4 (FUNC3 (x, 0))
	    || FUNC4 (FUNC3 (x, 1)));

  return 0;
}