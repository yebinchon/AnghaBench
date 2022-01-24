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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DImode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 int TARGET_64BIT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5 (rtx reg, rtx *lo, rtx *hi)
{
  FUNC3 (TARGET_64BIT);
  FUNC3 (FUNC0 (reg));
  FUNC3 (FUNC1 (reg) == DImode);
  FUNC3 (!(FUNC2 (reg) & 1));

  *lo = FUNC4 (SImode, FUNC2 (reg) + 1);
  *hi = FUNC4 (SImode, FUNC2 (reg));
}