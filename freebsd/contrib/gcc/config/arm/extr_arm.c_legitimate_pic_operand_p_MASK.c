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
 scalar_t__ PLUS ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2 (rtx x)
{
  if (FUNC0 (x) == SYMBOL_REF
      || (FUNC0 (x) == CONST
	  && FUNC0 (FUNC1 (x, 0)) == PLUS
	  && FUNC0 (FUNC1 (FUNC1 (x, 0), 0)) == SYMBOL_REF))
    return 0;

  return 1;
}