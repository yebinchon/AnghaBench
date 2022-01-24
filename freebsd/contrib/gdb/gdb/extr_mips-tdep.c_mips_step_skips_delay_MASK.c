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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int MIPS_INSTLEN ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC4 (CORE_ADDR pc)
{
  char buf[MIPS_INSTLEN];

  /* There is no branch delay slot on MIPS16.  */
  if (FUNC2 (pc))
    return 0;

  if (FUNC3 (pc, buf, MIPS_INSTLEN) != 0)
    /* If error reading memory, guess that it is not a delayed branch.  */
    return 0;
  return FUNC1 ((unsigned long)
		     FUNC0 (buf, MIPS_INSTLEN));
}