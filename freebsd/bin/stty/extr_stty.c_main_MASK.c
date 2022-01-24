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
struct info {int set; int wset; int /*<<< orphan*/  win; int /*<<< orphan*/  fd; int /*<<< orphan*/  t; int /*<<< orphan*/  ldisc; } ;
typedef  int /*<<< orphan*/  speed_t ;
typedef  enum FMT { ____Placeholder_FMT } FMT ;

/* Variables and functions */
#define  BSD 131 
#define  GFLAG 130 
#define  NOTSET 129 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
#define  POSIX 128 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TIOCGETD ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  TIOCSWINSZ ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char***,struct info*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char) ; 
 scalar_t__ FUNC12 (char***,struct info*) ; 
 scalar_t__ FUNC13 (char***,struct info*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 char* optarg ; 
 scalar_t__ opterr ; 
 int optind ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 

int
FUNC25(int argc, char *argv[])
{
	struct info i;
	enum FMT fmt;
	int ch;
	const char *file, *errstr = NULL;

	fmt = NOTSET;
	i.fd = STDIN_FILENO;
	file = "stdin";

	opterr = 0;
	while (optind < argc &&
	    FUNC18(argv[optind], "-aefg") == FUNC16(argv[optind]) &&
	    (ch = FUNC7(argc, argv, "aef:g")) != -1)
		switch(ch) {
		case 'a':		/* undocumented: POSIX compatibility */
			fmt = POSIX;
			break;
		case 'e':
			fmt = BSD;
			break;
		case 'f':
			if ((i.fd = FUNC14(optarg, O_RDONLY | O_NONBLOCK)) < 0)
				FUNC4(1, "%s", optarg);
			file = optarg;
			break;
		case 'g':
			fmt = GFLAG;
			break;
		case '?':
		default:
			goto args;
		}

args:	argc -= optind;
	argv += optind;

	if (FUNC20(i.fd, &i.t) < 0)
		FUNC5(1, "%s isn't a terminal", file);
	if (FUNC10(i.fd, TIOCGETD, &i.ldisc) < 0)
		FUNC4(1, "TIOCGETD");
	if (FUNC10(i.fd, TIOCGWINSZ, &i.win) < 0)
		FUNC23("TIOCGWINSZ");

	FUNC2();			/* conversion aid */

	switch(fmt) {
	case NOTSET:
		if (*argv)
			break;
		/* FALLTHROUGH */
	case BSD:
	case POSIX:
		FUNC15(&i.t, &i.win, i.ldisc, fmt);
		break;
	case GFLAG:
		FUNC8(&i.t, &i.win, i.ldisc);
		break;
	}

	for (i.set = i.wset = 0; *argv; ++argv) {
		if (FUNC12(&argv, &i))
			continue;

		if (FUNC3(&argv, &i))
			continue;

		if (FUNC13(&argv, &i))
			continue;

		if (FUNC11(**argv)) {
			speed_t speed;

			speed = FUNC19(*argv, 0, UINT_MAX, &errstr);
			if (errstr)
				FUNC4(1, "speed");
			FUNC1(&i.t, speed);
			FUNC0(&i.t, speed);
			i.set = 1;
			continue;
		}

		if (!FUNC17(*argv, "gfmt1", sizeof("gfmt1") - 1)) {
			FUNC9(&i.t, *argv + sizeof("gfmt1") - 1);
			i.set = 1;
			continue;
		}

		FUNC24("illegal option -- %s", *argv);
		FUNC22();
	}

	if (i.set && FUNC21(i.fd, 0, &i.t) < 0)
		FUNC4(1, "tcsetattr");
	if (i.wset && FUNC10(i.fd, TIOCSWINSZ, &i.win) < 0)
		FUNC23("TIOCSWINSZ");
	FUNC6(0);
}