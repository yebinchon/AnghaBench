#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stackmark {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  loc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_EXIT ; 
 scalar_t__ EXEXIT ; 
 scalar_t__ EXINT ; 
 int /*<<< orphan*/  FORCEINTON ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ exception ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exitstatus ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* handler ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*) ; 
 TYPE_1__ main_handler ; 
 int /*<<< orphan*/ * minusc ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct stackmark*) ; 
 scalar_t__ privileged ; 
 int /*<<< orphan*/  FUNC11 (int,char**) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  rootpid ; 
 int rootshell ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct stackmark*) ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/  FUNC18 (char**) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

int
FUNC20(int argc, char *argv[])
{
	struct stackmark smark, smark2;
	volatile int state;
	char *shinit;

	(void) FUNC16(LC_ALL, "");
	FUNC5();
	state = 0;
	if (FUNC15(main_handler.loc)) {
		if (state == 0 || iflag == 0 || ! rootshell ||
		    exception == EXEXIT)
			FUNC3(exitstatus);
		FUNC14();
		if (exception == EXINT)
			FUNC9("\n");
		FUNC10(&smark);
		FORCEINTON;				/* enable interrupts */
		if (state == 1)
			goto state1;
		else if (state == 2)
			goto state2;
		else if (state == 3)
			goto state3;
		else
			goto state4;
	}
	handler = &main_handler;
#ifdef DEBUG
	opentrace();
	trputs("Shell args:  ");  trargs(argv);
#endif
	rootpid = FUNC4();
	rootshell = 1;
	INTOFF;
	FUNC6();
	FUNC17(&smark);
	FUNC17(&smark2);
	FUNC11(argc, argv);
	FUNC12(iflag);
	INTON;
	if (iflag)
		FUNC0(1);
	if (argv[0] && argv[0][0] == '-') {
		state = 1;
		FUNC13("/etc/profile");
state1:
		state = 2;
		if (privileged == 0)
			FUNC13("${HOME-}/.profile");
		else
			FUNC13("/etc/suid_profile");
	}
state2:
	state = 3;
	if (!privileged && iflag) {
		if ((shinit = FUNC7("ENV")) != NULL && *shinit != '\0') {
			state = 3;
			FUNC13(shinit);
		}
	}
state3:
	state = 4;
	FUNC10(&smark2);
	if (minusc) {
		FUNC2(minusc, sflag ? 0 : EV_EXIT);
	}
state4:
	if (sflag || minusc == NULL) {
		FUNC1(1);
	}
	FUNC3(exitstatus);
	/*NOTREACHED*/
	return 0;
}