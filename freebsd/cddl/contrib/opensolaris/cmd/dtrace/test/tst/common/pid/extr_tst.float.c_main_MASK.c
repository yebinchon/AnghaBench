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
 double c ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int
FUNC1(int argc, char **argv)
{
	double a = 1.56;
	double b = (double)argc;

	for (;;) {
		c *= a;
		c += b;
		(void) FUNC0(1000);
	}

	return (0);
}