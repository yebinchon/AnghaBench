#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int count; int /*<<< orphan*/ * args; } ;

/* Variables and functions */
 int VEXPORT ; 
 int VSTACK ; 
 TYPE_1__* cmdenviron ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ iflag ; 
 scalar_t__ mflag ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char **argv)
{
	int i;

	/*
	 * Because we have historically not supported any options,
	 * only treat "--" specially.
	 */
	if (argc > 1 && FUNC5(argv[1], "--") == 0)
		argc--, argv++;
	if (argc > 1) {
		iflag = 0;		/* exit on error */
		mflag = 0;
		FUNC1();
		for (i = 0; i < cmdenviron->count; i++)
			FUNC3(cmdenviron->args[i], VEXPORT|VSTACK);
		FUNC4(argv + 1, FUNC0(), FUNC2(), 0);

	}
	return 0;
}