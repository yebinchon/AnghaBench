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
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_MOVE_BYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ optimize ; 

bool
FUNC4 (rtx dest, rtx src, rtx length)
{
  if (FUNC0 (length) == CONST_INT)
    {
      if (FUNC1 (length) <= 2 * MAX_MOVE_BYTES)
	{
	  FUNC3 (dest, src, FUNC1 (length));
	  return true;
	}
      else if (optimize)
	{
	  FUNC2 (dest, src, FUNC1 (length));
	  return true;
	}
    }
  return false;
}