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
struct TYPE_2__ {char** p; int reset; int /*<<< orphan*/  nparam; } ;

/* Variables and functions */
 int Eflag ; 
 int NOPTS ; 
 char* arg0 ; 
 char** argptr ; 
 char* commandname ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int iflag ; 
 scalar_t__ FUNC4 (int) ; 
 int mflag ; 
 int /*<<< orphan*/ * minusc ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int* optval ; 
 int privileged ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int sflag ; 
 TYPE_1__ shellparam ; 

void
FUNC8(int argc, char **argv)
{
	int i;
	char *scriptname;

	argptr = argv;
	if (argc > 0)
		argptr++;
	for (i = 0; i < NOPTS; i++)
		optval[i] = 2;
	privileged = (FUNC3() != FUNC1() || FUNC2() != FUNC0());
	FUNC5(1);
	if (*argptr == NULL && minusc == NULL)
		sflag = 1;
	if (iflag != 0 && sflag == 1 && FUNC4(0) && FUNC4(1)) {
		iflag = 1;
		if (Eflag == 2)
			Eflag = 1;
	}
	if (mflag == 2)
		mflag = iflag;
	for (i = 0; i < NOPTS; i++)
		if (optval[i] == 2)
			optval[i] = 0;
	arg0 = argv[0];
	if (sflag == 0 && minusc == NULL) {
		scriptname = *argptr++;
		FUNC7(scriptname, 0);
		commandname = arg0 = scriptname;
	}
	/* POSIX 1003.2: first arg after -c cmd is $0, remainder $1... */
	if (argptr && minusc && *argptr)
		arg0 = *argptr++;

	shellparam.p = argptr;
	shellparam.reset = 1;
	/* assert(shellparam.malloc == 0 && shellparam.nparam == 0); */
	while (*argptr) {
		shellparam.nparam++;
		argptr++;
	}
	FUNC6();
}