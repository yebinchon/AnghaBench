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
 int CR0_REGNO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 

char *
FUNC5 (rtx dst, rtx src)
{
  static char string[64];
  int a, b;

  FUNC3 (FUNC1 (dst) == REG && FUNC0 (FUNC2 (dst))
	      && FUNC1 (src) == REG && FUNC0 (FUNC2 (src)));

  /* GT bit.  */
  a = 4 * (FUNC2 (dst) - CR0_REGNO) + 1;
  b = 4 * (FUNC2 (src) - CR0_REGNO) + 1;

  FUNC4 (string, "crnot %d,%d", a, b);
  return string;
}