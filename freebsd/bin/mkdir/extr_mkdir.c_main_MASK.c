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
typedef  int mode_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int FUNC0 (char*,int) ; 
 int FUNC1 (char*,int) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (void*,int) ; 
 int FUNC7 (int,char**,char*) ; 
 scalar_t__ FUNC8 (char*,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 void* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int vflag ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

int
FUNC13(int argc, char *argv[])
{
	int ch, exitval, success, pflag;
	mode_t omode;
	void *set = NULL;
	char *mode;

	omode = pflag = 0;
	mode = NULL;
	while ((ch = FUNC7(argc, argv, "m:pv")) != -1)
		switch(ch) {
		case 'm':
			mode = optarg;
			break;
		case 'p':
			pflag = 1;
			break;
		case 'v':
			vflag = 1;
			break;
		case '?':
		default:
			FUNC11();
		}

	argc -= optind;
	argv += optind;
	if (argv[0] == NULL)
		FUNC11();

	if (mode == NULL) {
		omode = S_IRWXU | S_IRWXG | S_IRWXO;
	} else {
		if ((set = FUNC10(mode)) == NULL)
			FUNC3(1, "invalid file mode: %s", mode);
		omode = FUNC6(set, S_IRWXU | S_IRWXG | S_IRWXO);
		FUNC5(set);
	}

	for (exitval = 0; *argv != NULL; ++argv) {
		if (pflag) {
			success = FUNC0(*argv, omode);
		} else if (FUNC8(*argv, omode) < 0) {
			if (errno == ENOTDIR || errno == ENOENT)
				FUNC12("%s", FUNC2(*argv));
			else
				FUNC12("%s", *argv);
			success = 0;
		} else {
			success = 1;
			if (vflag)
				(void)FUNC9("%s\n", *argv);
		}
		if (!success)
			exitval = 1;
		/*
		 * The mkdir() and umask() calls both honor only the low
		 * nine bits, so if you try to set a mode including the
		 * sticky, setuid, setgid bits you lose them.  Don't do
		 * this unless the user has specifically requested a mode,
		 * as chmod will (obviously) ignore the umask.  Do this
		 * on newly created directories only.
		 */
		if (success == 1 && mode != NULL && FUNC1(*argv, omode) == -1) {
			FUNC12("%s", *argv);
			exitval = 1;
		}
	}
	FUNC4(exitval);
}