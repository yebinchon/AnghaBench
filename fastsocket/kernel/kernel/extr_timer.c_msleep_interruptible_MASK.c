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
 int /*<<< orphan*/  current ; 
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

unsigned long FUNC4(unsigned int msecs)
{
	unsigned long timeout = FUNC1(msecs) + 1;

	while (timeout && !FUNC3(current))
		timeout = FUNC2(timeout);
	return FUNC0(timeout);
}