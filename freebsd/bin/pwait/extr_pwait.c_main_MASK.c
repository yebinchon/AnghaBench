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
typedef  double time_t ;
typedef  int /*<<< orphan*/  suseconds_t ;
struct kevent {uintptr_t ident; scalar_t__ filter; int data; } ;
struct TYPE_2__ {double tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct itimerval {TYPE_1__ it_value; } ;
typedef  int /*<<< orphan*/  itv ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 scalar_t__ EVFILT_PROC ; 
 scalar_t__ EVFILT_SIGNAL ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,long,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OK ; 
 int EX_OSERR ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  NOTE_EXIT ; 
 long SIGALRM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**,char*) ; 
 int FUNC9 (int,struct kevent*,int,struct kevent*,int,int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 struct kevent* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct itimerval*,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 double FUNC17 (char*,char**) ; 
 long FUNC18 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*,long) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 

int
FUNC22(int argc, char *argv[])
{
	struct itimerval itv;
	int kq;
	struct kevent *e;
	int tflag, verbose;
	int opt, nleft, n, i, duplicate, status;
	long pid;
	char *s, *end;
	double timeout;

	tflag = verbose = 0;
	FUNC12(&itv, 0, sizeof(itv));
	while ((opt = FUNC8(argc, argv, "t:v")) != -1) {
		switch (opt) {
		case 't':
			tflag = 1;
			errno = 0;
			timeout = FUNC17(optarg, &end);
			if (end == optarg || errno == ERANGE ||
			    timeout < 0)
				FUNC6(EX_DATAERR, "timeout value");
			switch(*end) {
			case 0:
			case 's':
				break;
			case 'h':
				timeout *= 60;
				/* FALLTHROUGH */
			case 'm':
				timeout *= 60;
				break;
			default:
				FUNC6(EX_DATAERR, "timeout unit");
			}
			if (timeout > 100000000L)
				FUNC6(EX_DATAERR, "timeout value");
			itv.it_value.tv_sec = (time_t)timeout;
			timeout -= (time_t)timeout;
			itv.it_value.tv_usec =
			    (suseconds_t)(timeout * 1000000UL);
			break;
		case 'v':
			verbose = 1;
			break;
		default:
			FUNC19();
			/* NOTREACHED */
		}
	}

	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC19();

	kq = FUNC10();
	if (kq == -1)
		FUNC5(1, "kqueue");

	e = FUNC11((argc + tflag) * sizeof(struct kevent));
	if (e == NULL)
		FUNC5(1, "malloc");
	nleft = 0;
	for (n = 0; n < argc; n++) {
		s = argv[n];
		if (!FUNC16(s, "/proc/", 6)) /* Undocumented Solaris compat */
			s += 6;
		errno = 0;
		pid = FUNC18(s, &end, 10);
		if (pid < 0 || *end != '\0' || errno != 0) {
			FUNC21("%s: bad process id", s);
			continue;
		}
		duplicate = 0;
		for (i = 0; i < nleft; i++)
			if (e[i].ident == (uintptr_t)pid)
				duplicate = 1;
		if (!duplicate) {
			FUNC0(e + nleft, pid, EVFILT_PROC, EV_ADD, NOTE_EXIT,
			    0, NULL);
			if (FUNC9(kq, e + nleft, 1, NULL, 0, NULL) == -1)
				FUNC20("%ld", pid);
			else
				nleft++;
		}
	}

	if (tflag) {
		/*
		 * Explicitly detect SIGALRM so that an exit status of 124
		 * can be returned rather than 142.
		 */
		FUNC0(e + nleft, SIGALRM, EVFILT_SIGNAL, EV_ADD, 0, 0, NULL);
		if (FUNC9(kq, e + nleft, 1, NULL, 0, NULL) == -1)
			FUNC5(EX_OSERR, "kevent");
		/* Ignore SIGALRM to not interrupt kevent(2). */
		FUNC15(SIGALRM, SIG_IGN);
		if (FUNC14(ITIMER_REAL, &itv, NULL) == -1)
			FUNC5(EX_OSERR, "setitimer");
	}
	while (nleft > 0) {
		n = FUNC9(kq, NULL, 0, e, nleft + tflag, NULL);
		if (n == -1)
			FUNC5(1, "kevent");
		for (i = 0; i < n; i++) {
			if (e[i].filter == EVFILT_SIGNAL) {
				if (verbose)
					FUNC13("timeout\n");
				return (124);
			}
			if (verbose) {
				status = e[i].data;
				if (FUNC2(status))
					FUNC13("%ld: exited with status %d.\n",
					    (long)e[i].ident,
					    FUNC1(status));
				else if (FUNC3(status))
					FUNC13("%ld: killed by signal %d.\n",
					    (long)e[i].ident,
					    FUNC4(status));
				else
					FUNC13("%ld: terminated.\n",
					    (long)e[i].ident);
			}
			--nleft;
		}
	}

	FUNC7(EX_OK);
}