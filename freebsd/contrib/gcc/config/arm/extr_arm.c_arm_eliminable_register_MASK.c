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
 scalar_t__ ARG_POINTER_REGNUM ; 
 scalar_t__ FIRST_VIRTUAL_REGISTER ; 
 scalar_t__ FRAME_POINTER_REGNUM ; 
 scalar_t__ LAST_VIRTUAL_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2 (rtx x)
{
  return FUNC1 (x) && (FUNC0 (x) == FRAME_POINTER_REGNUM
		       || FUNC0 (x) == ARG_POINTER_REGNUM
		       || (FUNC0 (x) >= FIRST_VIRTUAL_REGISTER
			   && FUNC0 (x) <= LAST_VIRTUAL_REGISTER));
}