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
 int ARG_POINTER_REGNUM ; 
 int FUNC0 (int) ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FRAME_POINTER_REGNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int LAST_ARM_REGNUM ; 
 scalar_t__ REG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (rtx x, int strict_p)
{
  int regno;

  if (FUNC1 (x) != REG)
    return 0;

  regno = FUNC2 (x);

  if (strict_p)
    return FUNC0 (regno);

  return (regno <= LAST_ARM_REGNUM
	  || regno >= FIRST_PSEUDO_REGISTER
	  || regno == FRAME_POINTER_REGNUM
	  || regno == ARG_POINTER_REGNUM);
}