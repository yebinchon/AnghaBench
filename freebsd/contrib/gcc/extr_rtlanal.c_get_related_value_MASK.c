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
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINUS ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

rtx
FUNC2 (rtx x)
{
  if (FUNC0 (x) != CONST)
    return 0;
  x = FUNC1 (x, 0);
  if (FUNC0 (x) == PLUS
      && FUNC0 (FUNC1 (x, 1)) == CONST_INT)
    return FUNC1 (x, 0);
  else if (FUNC0 (x) == MINUS
	   && FUNC0 (FUNC1 (x, 1)) == CONST_INT)
    return FUNC1 (x, 0);
  return 0;
}