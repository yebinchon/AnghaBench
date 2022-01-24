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
 scalar_t__ MEM ; 
 scalar_t__ PIC_OFFSET_TABLE_REGNUM ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_GOT ; 
 scalar_t__ UNSPEC_GOTENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC5 (rtx orig_x)
{
  rtx x = orig_x, y;

  if (FUNC0 (x) != MEM)
    return orig_x;

  x = FUNC2 (x, 0);
  if (FUNC0 (x) == PLUS
      && FUNC0 (FUNC2 (x, 1)) == CONST
      && FUNC0 (FUNC2 (x, 0)) == REG
      && FUNC1 (FUNC2 (x, 0)) == PIC_OFFSET_TABLE_REGNUM)
    {
      y = FUNC2 (FUNC2 (x, 1), 0);
      if (FUNC0 (y) == UNSPEC
	  && FUNC3 (y, 1) == UNSPEC_GOT)
	return FUNC4 (y, 0, 0);
      return orig_x;
    }

  if (FUNC0 (x) == CONST)
    {
      y = FUNC2 (x, 0);
      if (FUNC0 (y) == UNSPEC
	  && FUNC3 (y, 1) == UNSPEC_GOTENT)
	return FUNC4 (y, 0, 0);
      return orig_x;
    }

  return orig_x;
}