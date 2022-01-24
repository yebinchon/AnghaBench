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
 int /*<<< orphan*/  SKIPBREAK ; 
 int /*<<< orphan*/  SKIPCONT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  evalskip ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 long loopnest ; 
 long skipcount ; 
 long FUNC2 (char*,char**,int) ; 

int
FUNC3(int argc, char **argv)
{
	long n;
	char *end;

	if (argc > 1) {
		/* Allow arbitrarily large numbers. */
		n = FUNC2(argv[1], &end, 10);
		if (!FUNC1(argv[1][0]) || *end != '\0')
			FUNC0("Illegal number: %s", argv[1]);
	} else
		n = 1;
	if (n > loopnest)
		n = loopnest;
	if (n > 0) {
		evalskip = (**argv == 'c')? SKIPCONT : SKIPBREAK;
		skipcount = n;
	}
	return 0;
}