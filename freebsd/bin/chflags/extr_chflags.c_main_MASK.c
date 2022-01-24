#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_6__ {scalar_t__ fts_level; int fts_info; char* fts_path; TYPE_1__* fts_statp; int /*<<< orphan*/  fts_accpath; int /*<<< orphan*/  fts_errno; } ;
struct TYPE_5__ {int st_flags; } ;
typedef  TYPE_2__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int AT_SYMLINK_NOFOLLOW ; 
 scalar_t__ ERANGE ; 
 int FTS_COMFOLLOW ; 
#define  FTS_D 131 
#define  FTS_DNR 130 
#define  FTS_ERR 129 
 int FTS_LOGICAL ; 
#define  FTS_NS 128 
 int FTS_PHYSICAL ; 
 scalar_t__ FTS_ROOTLEVEL ; 
 int /*<<< orphan*/  FTS_SKIP ; 
 int FTS_XDEV ; 
 int /*<<< orphan*/  SIGINFO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char**,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ siginfo ; 
 int /*<<< orphan*/  siginfo_handler ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char**,int*,int*) ; 
 long FUNC12 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC16(int argc, char *argv[])
{
	FTS *ftsp;
	FTSENT *p;
	u_long clear, newflags, set;
	long val;
	int Hflag, Lflag, Rflag, fflag, hflag, vflag, xflag;
	int ch, fts_options, oct, rval;
	char *flags, *ep;

	Hflag = Lflag = Rflag = fflag = hflag = vflag = xflag = 0;
	while ((ch = FUNC7(argc, argv, "HLPRfhvx")) != -1)
		switch (ch) {
		case 'H':
			Hflag = 1;
			Lflag = 0;
			break;
		case 'L':
			Lflag = 1;
			Hflag = 0;
			break;
		case 'P':
			Hflag = Lflag = 0;
			break;
		case 'R':
			Rflag = 1;
			break;
		case 'f':
			fflag = 1;
			break;
		case 'h':
			hflag = 1;
			break;
		case 'v':
			vflag++;
			break;
		case 'x':
			xflag = 1;
			break;
		case '?':
		default:
			FUNC13();
		}
	argv += optind;
	argc -= optind;

	if (argc < 2)
		FUNC13();

	(void)FUNC9(SIGINFO, siginfo_handler);

	if (Rflag) {
		if (hflag)
			FUNC2(1, "the -R and -h options may not be "
			    "specified together.");
		if (Lflag) {
			fts_options = FTS_LOGICAL;
		} else {
			fts_options = FTS_PHYSICAL;

			if (Hflag) {
				fts_options |= FTS_COMFOLLOW;
			}
		}
	} else if (hflag) {
		fts_options = FTS_PHYSICAL;
	} else {
		fts_options = FTS_LOGICAL;
	}
	if (xflag)
		fts_options |= FTS_XDEV;

	flags = *argv;
	if (*flags >= '0' && *flags <= '7') {
		errno = 0;
		val = FUNC12(flags, &ep, 8);
		if (val < 0)
			errno = ERANGE;
		if (errno)
                        FUNC1(1, "invalid flags: %s", flags);
                if (*ep)
                        FUNC2(1, "invalid flags: %s", flags);
		set = val;
                oct = 1;
	} else {
		if (FUNC11(&flags, &set, &clear))
                        FUNC2(1, "invalid flag: %s", flags);
		clear = ~clear;
		oct = 0;
	}

	if ((ftsp = FUNC4(++argv, fts_options , 0)) == NULL)
		FUNC1(1, NULL);

	for (rval = 0; (p = FUNC5(ftsp)) != NULL;) {
		int atflag;

		if ((fts_options & FTS_LOGICAL) ||
		    ((fts_options & FTS_COMFOLLOW) &&
		    p->fts_level == FTS_ROOTLEVEL))
			atflag = 0;
		else
			atflag = AT_SYMLINK_NOFOLLOW;

		switch (p->fts_info) {
		case FTS_D:	/* Change it at FTS_DP if we're recursive. */
			if (!Rflag)
				FUNC6(ftsp, p, FTS_SKIP);
			continue;
		case FTS_DNR:			/* Warn, chflags. */
			FUNC15("%s: %s", p->fts_path, FUNC10(p->fts_errno));
			rval = 1;
			break;
		case FTS_ERR:			/* Warn, continue. */
		case FTS_NS:
			FUNC15("%s: %s", p->fts_path, FUNC10(p->fts_errno));
			rval = 1;
			continue;
		default:
			break;
		}
		if (oct)
			newflags = set;
		else
			newflags = (p->fts_statp->st_flags | set) & clear;
		if (newflags == p->fts_statp->st_flags)
			continue;
		if (FUNC0(AT_FDCWD, p->fts_accpath, newflags,
		    atflag) == -1 && !fflag) {
			FUNC14("%s", p->fts_path);
			rval = 1;
		} else if (vflag || siginfo) {
			(void)FUNC8("%s", p->fts_path);
			if (vflag > 1 || siginfo)
				(void)FUNC8(": 0%lo -> 0%lo",
				    (u_long)p->fts_statp->st_flags,
				    newflags);
			(void)FUNC8("\n");
			siginfo = 0;
		}
	}
	if (errno)
		FUNC1(1, "fts_read");
	FUNC3(rval);
}