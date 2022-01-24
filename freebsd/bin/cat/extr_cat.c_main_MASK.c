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
struct flock {int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; scalar_t__ l_start; scalar_t__ l_len; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int bflag ; 
 void* eflag ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*) ; 
 int FUNC4 (int,char**,char*) ; 
 int lflag ; 
 int nflag ; 
 int /*<<< orphan*/  optind ; 
 int /*<<< orphan*/  rval ; 
 int /*<<< orphan*/  FUNC5 (char**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int sflag ; 
 int /*<<< orphan*/  stdout ; 
 void* tflag ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* vflag ; 

int
FUNC9(int argc, char *argv[])
{
	int ch;
	struct flock stdout_lock;

	FUNC7(LC_CTYPE, "");

	while ((ch = FUNC4(argc, argv, "belnstuv")) != -1)
		switch (ch) {
		case 'b':
			bflag = nflag = 1;	/* -b implies -n */
			break;
		case 'e':
			eflag = vflag = 1;	/* -e implies -v */
			break;
		case 'l':
			lflag = 1;
			break;
		case 'n':
			nflag = 1;
			break;
		case 's':
			sflag = 1;
			break;
		case 't':
			tflag = vflag = 1;	/* -t implies -v */
			break;
		case 'u':
			FUNC6(stdout, NULL);
			break;
		case 'v':
			vflag = 1;
			break;
		default:
			FUNC8();
		}
	argv += optind;

	if (lflag) {
		stdout_lock.l_len = 0;
		stdout_lock.l_start = 0;
		stdout_lock.l_type = F_WRLCK;
		stdout_lock.l_whence = SEEK_SET;
		if (FUNC3(STDOUT_FILENO, F_SETLKW, &stdout_lock) == -1)
			FUNC0(EXIT_FAILURE, "stdout");
	}

	if (bflag || eflag || nflag || sflag || tflag || vflag)
		FUNC5(argv, 1);
	else
		FUNC5(argv, 0);
	if (FUNC2(stdout))
		FUNC0(1, "stdout");
	FUNC1(rval);
	/* NOTREACHED */
}