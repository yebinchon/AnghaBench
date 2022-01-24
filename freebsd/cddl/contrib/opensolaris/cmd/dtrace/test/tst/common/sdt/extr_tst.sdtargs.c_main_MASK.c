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
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 

int
FUNC3(int argc, char **argv)
{
	int val = 1;

	while (1) {
		if (FUNC2("debug.dtracetest.sdttest", NULL, NULL, &val,
		    sizeof(val)))
			FUNC0(1, "sysctlbyname");

		FUNC1(1);
	}

	return (0);
}