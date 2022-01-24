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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DISPC_SIZE_DIG ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(int x, int y)
{
	FUNC0((x > (1 << 11)) || (y > (1 << 11)));
	FUNC3(1);
	FUNC2(DISPC_SIZE_DIG, FUNC1(16, 11) | FUNC1(0, 11),
			((y - 1) << 16) | (x - 1));
	FUNC3(0);
}