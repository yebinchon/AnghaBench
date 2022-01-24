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
typedef  int /*<<< orphan*/  totalbuf ;
struct statfs {char* f_mntonname; int f_flags; int /*<<< orphan*/  f_fstypename; int /*<<< orphan*/  f_mntfromname; int /*<<< orphan*/  f_bsize; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct maxwidths {char* f_mntonname; int f_flags; int /*<<< orphan*/  f_fstypename; int /*<<< orphan*/  f_mntfromname; int /*<<< orphan*/  f_bsize; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  maxwidths ;
typedef  int /*<<< orphan*/  errmsg ;
struct TYPE_2__ {char* fspec; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_BSIZE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  MNAMELEN ; 
 int MNT_IGNORE ; 
 int MNT_NOEXEC ; 
 int /*<<< orphan*/  MNT_NOWAIT ; 
 int MNT_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int Tflag ; 
 int /*<<< orphan*/  UNITS_2 ; 
 int /*<<< orphan*/  UNITS_SI ; 
 int /*<<< orphan*/  FUNC1 (struct statfs*,struct statfs*) ; 
 int aflag ; 
 int /*<<< orphan*/  FUNC2 (struct iovec**,int*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iovec**,int*,char*,char*,char const*) ; 
 int cflag ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct iovec**,int*) ; 
 int FUNC8 (struct statfs**,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hflag ; 
 int iflag ; 
 int /*<<< orphan*/  kflag ; 
 int lflag ; 
 int /*<<< orphan*/  long_options ; 
 char* FUNC11 () ; 
 char** FUNC12 (char*) ; 
 struct statfs* FUNC13 (int) ; 
 TYPE_1__ mdev ; 
 int /*<<< orphan*/  FUNC14 (struct statfs*,int /*<<< orphan*/ ,int) ; 
 char* FUNC15 (char*) ; 
 int nflag ; 
 scalar_t__ FUNC16 (struct iovec*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC17 (struct statfs*,struct statfs*) ; 
 int FUNC18 (struct statfs**,int,char const**) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC22 (char*,struct stat*) ; 
 scalar_t__ FUNC23 (char*,struct statfs*) ; 
 char* FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int thousands ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct statfs*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (int,char*) ; 
 int /*<<< orphan*/  FUNC32 (int,char*) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 int /*<<< orphan*/  FUNC35 (char*) ; 
 int FUNC36 (int,char**) ; 
 int /*<<< orphan*/  FUNC37 (char*,...) ; 
 int /*<<< orphan*/  FUNC38 (char*,...) ; 

int
FUNC39(int argc, char *argv[])
{
	struct stat stbuf;
	struct statfs statfsbuf, totalbuf;
	struct maxwidths maxwidths;
	struct statfs *mntbuf;
#ifdef MOUNT_CHAR_DEVS
	struct iovec *iov = NULL;
#endif
	const char *fstype;
#ifdef MOUNT_CHAR_DEVS
	char *mntpath;
	char errmsg[255] = {0};
#endif
	char *mntpt;
	const char **vfslist;
	int i, mntsize;
	int ch, rv;
#ifdef MOUNT_CHAR_DEVS
	int iovlen = 0;
#endif

	fstype = "ufs";
	(void)FUNC21(LC_ALL, "");
	FUNC14(&maxwidths, 0, sizeof(maxwidths));
	FUNC14(&totalbuf, 0, sizeof(totalbuf));
	totalbuf.f_bsize = DEV_BSIZE;
	FUNC25(totalbuf.f_mntfromname, "total", MNAMELEN);
	vfslist = NULL;

	argc = FUNC36(argc, argv);
	if (argc < 0)
		FUNC5(1);

	while ((ch = FUNC10(argc, argv, "+abcgHhiklmnPt:T,", long_options,
	    NULL)) != -1)
		switch (ch) {
		case 'a':
			aflag = 1;
			break;
		case 'b':
				/* FALLTHROUGH */
		case 'P':
			/*
			 * POSIX specifically discusses the behavior of
			 * both -k and -P. It states that the blocksize should
			 * be set to 1024. Thus, if this occurs, simply break
			 * rather than clobbering the old blocksize.
			 */
			if (kflag)
				break;
			FUNC20("BLOCKSIZE", "512", 1);
			hflag = 0;
			break;
		case 'c':
			cflag = 1;
			break;
		case 'g':
			FUNC20("BLOCKSIZE", "1g", 1);
			hflag = 0;
			break;
		case 'H':
			hflag = UNITS_SI;
			break;
		case 'h':
			hflag = UNITS_2;
			break;
		case 'i':
			iflag = 1;
			break;
		case 'k':
			kflag++;
			FUNC20("BLOCKSIZE", "1024", 1);
			hflag = 0;
			break;
		case 'l':
			/* Ignore duplicate -l */
			if (lflag)
				break;
			if (vfslist != NULL)
				FUNC32(1, "-l and -t are mutually exclusive.");
			vfslist = FUNC12(FUNC11());
			lflag = 1;
			break;
		case 'm':
			FUNC20("BLOCKSIZE", "1m", 1);
			hflag = 0;
			break;
		case 'n':
			nflag = 1;
			break;
		case 't':
			if (lflag)
				FUNC32(1, "-l and -t are mutually exclusive.");
			if (vfslist != NULL)
				FUNC32(1, "only one -t option may be specified");
			fstype = optarg;
			vfslist = FUNC12(optarg);
			break;
		case 'T':
			Tflag = 1;
			break;
		case ',':
			thousands = 1;
			break;
		case '?':
		default:
			FUNC28();
		}
	argc -= optind;
	argv += optind;

	rv = 0;
	if (!*argv) {
		/* everything (modulo -t) */
		mntsize = FUNC8(&mntbuf, MNT_NOWAIT);
		mntsize = FUNC18(&mntbuf, mntsize, vfslist);
	} else {
		/* just the filesystems specified on the command line */
		mntbuf = FUNC13(argc * sizeof(*mntbuf));
		if (mntbuf == NULL)
			FUNC31(1, "malloc()");
		mntsize = 0;
		/* continued in for loop below */
	}

	FUNC34("storage-system-information");
	FUNC35("filesystem");

	/* iterate through specified filesystems */
	for (; *argv; argv++) {
		if (FUNC22(*argv, &stbuf) < 0) {
			if ((mntpt = FUNC9(*argv)) == NULL) {
				FUNC37("%s", *argv);
				rv = 1;
				continue;
			}
		} else if (FUNC0(stbuf.st_mode)) {
			if ((mntpt = FUNC9(*argv)) == NULL) {
#ifdef MOUNT_CHAR_DEVS
				xo_warnx(
				    "df on unmounted devices is deprecated");
				mdev.fspec = *argv;
				mntpath = strdup("/tmp/df.XXXXXX");
				if (mntpath == NULL) {
					xo_warn("strdup failed");
					rv = 1;
					continue;
				}
				mntpt = mkdtemp(mntpath);
				if (mntpt == NULL) {
					xo_warn("mkdtemp(\"%s\") failed", mntpath);
					rv = 1;
					free(mntpath);
					continue;
				}
				if (iov != NULL)
					free_iovec(&iov, &iovlen);
				build_iovec_argf(&iov, &iovlen, "fstype", "%s",
				    fstype);
				build_iovec_argf(&iov, &iovlen, "fspath", "%s",
				    mntpath);
				build_iovec_argf(&iov, &iovlen, "from", "%s",
				    *argv);
				build_iovec(&iov, &iovlen, "errmsg", errmsg,
				    sizeof(errmsg));
				if (nmount(iov, iovlen,
				    MNT_RDONLY|MNT_NOEXEC) < 0) {
					if (errmsg[0])
						xo_warn("%s: %s", *argv,
						    errmsg);
					else
						xo_warn("%s", *argv);
					rv = 1;
					(void)rmdir(mntpt);
					free(mntpath);
					continue;
				} else if (statfs(mntpt, &statfsbuf) == 0) {
					statfsbuf.f_mntonname[0] = '\0';
					prtstat(&statfsbuf, &maxwidths);
					if (cflag)
						addstat(&totalbuf, &statfsbuf);
				} else {
					xo_warn("%s", *argv);
					rv = 1;
				}
				(void)unmount(mntpt, 0);
				(void)rmdir(mntpt);
				free(mntpath);
				continue;
#else
				FUNC38("%s: not mounted", *argv);
				rv = 1;
				continue;
#endif
			}
		} else
			mntpt = *argv;

		/*
		 * Statfs does not take a `wait' flag, so we cannot
		 * implement nflag here.
		 */
		if (FUNC23(mntpt, &statfsbuf) < 0) {
			FUNC37("%s", mntpt);
			rv = 1;
			continue;
		}

		/*
		 * Check to make sure the arguments we've been given are
		 * satisfied.  Return an error if we have been asked to
		 * list a mount point that does not match the other args
		 * we've been given (-l, -t, etc.).
		 */
		if (FUNC4(statfsbuf.f_fstypename, vfslist)) {
			rv = 1;
			continue;
		}

		/* the user asked for it, so ignore the ignore flag */
		statfsbuf.f_flags &= ~MNT_IGNORE;

		/* add to list */
		mntbuf[mntsize++] = statfsbuf;
	}

	FUNC14(&maxwidths, 0, sizeof(maxwidths));
	for (i = 0; i < mntsize; i++) {
		if (aflag || (mntbuf[i].f_flags & MNT_IGNORE) == 0) {
			FUNC27(&maxwidths, &mntbuf[i]);
			if (cflag)
				FUNC1(&totalbuf, &mntbuf[i]);
		}
	}
	for (i = 0; i < mntsize; i++)
		if (aflag || (mntbuf[i].f_flags & MNT_IGNORE) == 0)
			FUNC17(&mntbuf[i], &maxwidths);

	FUNC30("filesystem");

	if (cflag)
		FUNC17(&totalbuf, &maxwidths);

	FUNC29("storage-system-information");
	FUNC33();
	FUNC5(rv);
}