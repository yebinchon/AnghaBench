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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3 (rtx x, rtx *base, HOST_WIDE_INT *offset)
{
  *offset = 0;

  if (FUNC0 (x) == CONST)
    {
      x = FUNC2 (x, 0);
      if (FUNC0 (x) == PLUS && FUNC0 (FUNC2 (x, 1)) == CONST_INT)
	{
	  *offset += FUNC1 (FUNC2 (x, 1));
	  x = FUNC2 (x, 0);
	}
    }
  *base = x;
}