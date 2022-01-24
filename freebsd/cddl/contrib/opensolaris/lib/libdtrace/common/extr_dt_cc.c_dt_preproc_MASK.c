#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  verdef ;
struct sigaction {int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  opath ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  off64_t ;
typedef  int /*<<< orphan*/  ipath ;
struct TYPE_4__ {int dt_cpp_argc; int dt_vmax; int dt_stdcmode; int /*<<< orphan*/  dt_cpp_path; int /*<<< orphan*/  dt_cpp_argv; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  int /*<<< orphan*/  act ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  DT_STDC_XA 130 
#define  DT_STDC_XC 129 
#define  DT_STDC_XT 128 
 scalar_t__ EDT_CPPENT ; 
 scalar_t__ EDT_CPPERR ; 
 scalar_t__ EDT_CPPEXEC ; 
 scalar_t__ EDT_CPPFORK ; 
 scalar_t__ EINTR ; 
 scalar_t__ ENOENT ; 
 int EOF ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sigaction*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int,int /*<<< orphan*/ ) ; 
 char** FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int FUNC27 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *
FUNC28(dtrace_hdl_t *dtp, FILE *ifp)
{
	int argc = dtp->dt_cpp_argc;
	char **argv = FUNC20(sizeof (char *) * (argc + 5));
	FILE *ofp = FUNC26();

#ifdef illumos
	char ipath[20], opath[20]; /* big enough for /dev/fd/ + INT_MAX + \0 */
#endif
	char verdef[32]; /* big enough for -D__SUNW_D_VERSION=0x%08x + \0 */

	struct sigaction act, oact;
	sigset_t mask, omask;

	int wstat, estat;
	pid_t pid;
#ifdef illumos
	off64_t off;
#else
	off_t off = 0;
#endif
	int c;

	if (argv == NULL || ofp == NULL) {
		(void) FUNC6(dtp, errno);
		goto err;
	}

	/*
	 * If the input is a seekable file, see if it is an interpreter file.
	 * If we see #!, seek past the first line because cpp will choke on it.
	 * We start cpp just prior to the \n at the end of this line so that
	 * it still sees the newline, ensuring that #line values are correct.
	 */
	if (FUNC18(FUNC12(ifp)) == 0 && (off = FUNC17(ifp)) != -1) {
		if ((c = FUNC11(ifp)) == '#' && (c = FUNC11(ifp)) == '!') {
			for (off += 2; c != '\n'; off++) {
				if ((c = FUNC11(ifp)) == EOF)
					break;
			}
			if (c == '\n')
				off--; /* start cpp just prior to \n */
		}
		(void) FUNC10(ifp);
		(void) FUNC16(ifp, off, SEEK_SET);
	}

#ifdef illumos
	(void) snprintf(ipath, sizeof (ipath), "/dev/fd/%d", fileno(ifp));
	(void) snprintf(opath, sizeof (opath), "/dev/fd/%d", fileno(ofp));
#endif

	FUNC3(dtp->dt_cpp_argv, argv, sizeof (char *) * argc);

	(void) FUNC25(verdef, sizeof (verdef),
	    "-D__SUNW_D_VERSION=0x%08x", dtp->dt_vmax);
	argv[argc++] = verdef;

#ifdef illumos
	switch (dtp->dt_stdcmode) {
	case DT_STDC_XA:
	case DT_STDC_XT:
		argv[argc++] = "-D__STDC__=0";
		break;
	case DT_STDC_XC:
		argv[argc++] = "-D__STDC__=1";
		break;
	}

	argv[argc++] = ipath;
	argv[argc++] = opath;
#else
	argv[argc++] = "-P";
#endif
	argv[argc] = NULL;

	/*
	 * libdtrace must be able to be embedded in other programs that may
	 * include application-specific signal handlers.  Therefore, if we
	 * need to fork to run cpp(1), we must avoid generating a SIGCHLD
	 * that could confuse the containing application.  To do this,
	 * we block SIGCHLD and reset its disposition to SIG_DFL.
	 * We restore our signal state once we are done.
	 */
	(void) FUNC23(&mask);
	(void) FUNC22(&mask, SIGCHLD);
	(void) FUNC24(SIG_BLOCK, &mask, &omask);

	FUNC4(&act, sizeof (act));
	act.sa_handler = SIG_DFL;
	(void) FUNC21(SIGCHLD, &act, &oact);

	if ((pid = FUNC13()) == -1) {
		(void) FUNC21(SIGCHLD, &oact, NULL);
		(void) FUNC24(SIG_SETMASK, &omask, NULL);
		(void) FUNC6(dtp, EDT_CPPFORK);
		goto err;
	}

	if (pid == 0) {
#ifndef illumos
		if (FUNC18(FUNC12(ifp)) == 0)
			FUNC19(FUNC12(ifp), off, SEEK_SET);
		FUNC7(FUNC12(ifp), 0);
		FUNC7(FUNC12(ofp), 1);
#endif
		(void) FUNC8(dtp->dt_cpp_path, argv);
		FUNC2(errno == ENOENT ? 127 : 126);
	}

	do {
		FUNC5("waiting for %s (PID %d)\n", dtp->dt_cpp_path,
		    (int)pid);
	} while (FUNC27(pid, &wstat, 0) == -1 && errno == EINTR);

	(void) FUNC21(SIGCHLD, &oact, NULL);
	(void) FUNC24(SIG_SETMASK, &omask, NULL);

	FUNC5("%s returned exit status 0x%x\n", dtp->dt_cpp_path, wstat);
	estat = FUNC1(wstat) ? FUNC0(wstat) : -1;

	if (estat != 0) {
		switch (estat) {
		case 126:
			(void) FUNC6(dtp, EDT_CPPEXEC);
			break;
		case 127:
			(void) FUNC6(dtp, EDT_CPPENT);
			break;
		default:
			(void) FUNC6(dtp, EDT_CPPERR);
		}
		goto err;
	}

	FUNC14(argv);
	(void) FUNC10(ofp);
	(void) FUNC15(ofp, 0, SEEK_SET);
	return (ofp);

err:
	FUNC14(argv);
	(void) FUNC9(ofp);
	return (NULL);
}