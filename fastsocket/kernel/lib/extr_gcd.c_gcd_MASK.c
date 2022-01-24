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
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 

unsigned long FUNC1(unsigned long a, unsigned long b)
{
	unsigned long r;

	if (a < b)
		FUNC0(a, b);
	while ((r = a % b) != 0) {
		a = b;
		b = r;
	}
	return b;
}