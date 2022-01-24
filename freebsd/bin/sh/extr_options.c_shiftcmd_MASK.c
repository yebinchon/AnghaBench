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
struct TYPE_2__ {int nparam; int reset; int /*<<< orphan*/ * p; scalar_t__ malloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (char*) ; 
 TYPE_1__ shellparam ; 

int
FUNC3(int argc, char **argv)
{
	int i, n;

	n = 1;
	if (argc > 1)
		n = FUNC2(argv[1]);
	if (n > shellparam.nparam)
		return 1;
	INTOFF;
	shellparam.nparam -= n;
	if (shellparam.malloc)
		for (i = 0; i < n; i++)
			FUNC0(shellparam.p[i]);
	FUNC1(shellparam.p, shellparam.p + n,
	    (shellparam.nparam + 1) * sizeof(shellparam.p[0]));
	shellparam.reset = 1;
	INTON;
	return 0;
}