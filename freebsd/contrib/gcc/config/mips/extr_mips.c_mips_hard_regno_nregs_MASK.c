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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int UNITS_PER_FPREG ; 
 int UNITS_PER_WORD ; 

unsigned int
FUNC3 (int regno, enum machine_mode mode)
{
  if (FUNC2 (regno))
    return ((FUNC1 (mode) + 3) / 4);
  else if (! FUNC0 (regno))
    return ((FUNC1 (mode) + UNITS_PER_WORD - 1) / UNITS_PER_WORD);
  else
    return ((FUNC1 (mode) + UNITS_PER_FPREG - 1) / UNITS_PER_FPREG);
}