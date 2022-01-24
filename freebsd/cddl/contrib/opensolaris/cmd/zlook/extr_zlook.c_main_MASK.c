#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int zl_reqflags; int zr_reqflags; char* zr_dir; char* zr_file; long zr_buflen; int zr_retcode; char* zl_dir; char* zl_file; char* zl_xfile; int zl_retcode; int zl_deflags; char* zl_real; int /*<<< orphan*/  zl_xvattrs; int /*<<< orphan*/  zl_statbuf; int /*<<< orphan*/  zr_eof; scalar_t__ zr_buf; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zut_readdir_t ;
typedef  TYPE_1__ zut_lookup_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 long BIGBUF ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENXIO ; 
 long LILBUF ; 
 long MAXBUF ; 
 int MAXNAMELEN ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int ZUT_ACCFILTER ; 
 char* ZUT_DEV ; 
 int ZUT_EXTRDDIR ; 
 int ZUT_GETSTAT ; 
 int ZUT_IGNORECASE ; 
 int /*<<< orphan*/  ZUT_IOC_LOOKUP ; 
 int /*<<< orphan*/  ZUT_IOC_READDIR ; 
 int ZUT_XATTR ; 
#define  _PC_ACCESS_FILTERING 130 
#define  _PC_SATTR_ENABLED 129 
#define  _PC_SATTR_EXISTS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char**,char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC6 (long) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 long FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 long FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int
FUNC19(int argc, char **argv)
{
	zut_lookup_t lk = {0};
	zut_readdir_t rd = {0};
	boolean_t checking = B_FALSE;
	boolean_t looking = B_FALSE;
	boolean_t reading = B_FALSE;
	boolean_t bflag = B_FALSE;
	long rddir_bufsize = BIGBUF;
	int error = 0;
	int check;
	int fd;
	int c;

	while ((c = FUNC4(argc, argv, "lisaerb:ASE")) != -1) {
		switch (c) {
		case 'l':
			looking = B_TRUE;
			break;
		case 'i':
			lk.zl_reqflags |= ZUT_IGNORECASE;
			looking = B_TRUE;
			break;
		case 's':
			lk.zl_reqflags |= ZUT_GETSTAT;
			looking = B_TRUE;
			break;
		case 'a':
			rd.zr_reqflags |= ZUT_ACCFILTER;
			reading = B_TRUE;
			break;
		case 'e':
			rd.zr_reqflags |= ZUT_EXTRDDIR;
			reading = B_TRUE;
			break;
		case 'r':
			reading = B_TRUE;
			break;
		case 'b':
			reading = B_TRUE;
			bflag = B_TRUE;
			rddir_bufsize = FUNC17(optarg, NULL, 0);
			break;
		case 'A':
			checking = B_TRUE;
			check = _PC_ACCESS_FILTERING;
			break;
		case 'S':
			checking = B_TRUE;
			check = _PC_SATTR_ENABLED;
			break;
		case 'E':
			checking = B_TRUE;
			check = _PC_SATTR_EXISTS;
			break;
		case '?':
		default:
			FUNC18(argv[0]);		/* no return */
		}
	}

	if ((checking && looking) || (checking && reading) ||
	    (looking && reading) || (!reading && bflag) ||
	    (!checking && !reading && !looking))
		FUNC18(argv[0]);		/* no return */

	if (rddir_bufsize < LILBUF || rddir_bufsize > MAXBUF) {
		(void) FUNC2(stderr, "Sorry, buffer size "
		    "must be >= %d and less than or equal to %ld bytes.\n",
		    (int)LILBUF, MAXBUF);
		FUNC1(EINVAL);
	}

	if (checking) {
		char pathbuf[MAXPATHLEN];
		long result;

		if (argc - optind < 1)
			FUNC18(argv[0]);		/* no return */
		(void) FUNC16(pathbuf, argv[optind], MAXPATHLEN);
		result = FUNC8(pathbuf, check);
		(void) FUNC14("pathconf(2) check for %s\n", pathbuf);
		switch (check) {
		case _PC_SATTR_ENABLED:
			(void) FUNC14("System attributes ");
			if (result != 0)
				(void) FUNC14("Enabled\n");
			else
				(void) FUNC14("Not enabled\n");
			break;
		case _PC_SATTR_EXISTS:
			(void) FUNC14("System attributes ");
			if (result != 0)
				(void) FUNC14("Exist\n");
			else
				(void) FUNC14("Do not exist\n");
			break;
		case _PC_ACCESS_FILTERING:
			(void) FUNC14("Access filtering ");
			if (result != 0)
				(void) FUNC14("Available\n");
			else
				(void) FUNC14("Not available\n");
			break;
		}
		return (result);
	}

	if ((fd = FUNC7(ZUT_DEV, O_RDONLY)) < 0) {
		FUNC9(ZUT_DEV);
		return (ENXIO);
	}

	if (reading) {
		char *buf;

		if (argc - optind < 1)
			FUNC18(argv[0]);		/* no return */

		(void) FUNC16(rd.zr_dir, argv[optind], MAXPATHLEN);
		if (argc - optind > 1) {
			(void) FUNC16(rd.zr_file, argv[optind + 1],
			    MAXNAMELEN);
			rd.zr_reqflags |= ZUT_XATTR;
		}

		if ((buf = FUNC6(rddir_bufsize)) == NULL) {
			error = errno;
			FUNC9("malloc");
			(void) FUNC0(fd);
			return (error);
		}

		rd.zr_buf = (uint64_t)(uintptr_t)buf;
		rd.zr_buflen = rddir_bufsize;

		while (!rd.zr_eof) {
			int ierr;

			if ((ierr = FUNC5(fd, ZUT_IOC_READDIR, &rd)) != 0) {
				(void) FUNC2(stderr,
				    "IOCTL error: %s (%d)\n",
				    FUNC15(ierr), ierr);
				FUNC3(buf);
				(void) FUNC0(fd);
				return (ierr);
			}
			if (rd.zr_retcode) {
				(void) FUNC2(stderr,
				    "readdir result: %s (%d)\n",
				    FUNC15(rd.zr_retcode), rd.zr_retcode);
				FUNC3(buf);
				(void) FUNC0(fd);
				return (rd.zr_retcode);
			}
			if (rd.zr_reqflags & ZUT_EXTRDDIR)
				FUNC11(&rd);
			else
				FUNC10(&rd);
		}
		FUNC3(buf);
	} else {
		int ierr;

		if (argc - optind < 2)
			FUNC18(argv[0]);		/* no return */

		(void) FUNC16(lk.zl_dir, argv[optind], MAXPATHLEN);
		(void) FUNC16(lk.zl_file, argv[optind + 1], MAXNAMELEN);
		if (argc - optind > 2) {
			(void) FUNC16(lk.zl_xfile,
			    argv[optind + 2], MAXNAMELEN);
			lk.zl_reqflags |= ZUT_XATTR;
		}

		if ((ierr = FUNC5(fd, ZUT_IOC_LOOKUP, &lk)) != 0) {
			(void) FUNC2(stderr,
			    "IOCTL error: %s (%d)\n",
			    FUNC15(ierr), ierr);
			(void) FUNC0(fd);
			return (ierr);
		}

		(void) FUNC14("\nLookup of ");
		if (lk.zl_reqflags & ZUT_XATTR) {
			(void) FUNC14("extended attribute \"%s\" of ",
			    lk.zl_xfile);
		}
		(void) FUNC14("file \"%s\" ", lk.zl_file);
		(void) FUNC14("in directory \"%s\" ", lk.zl_dir);
		if (lk.zl_retcode) {
			(void) FUNC14("failed: %s (%d)\n",
			    FUNC15(lk.zl_retcode), lk.zl_retcode);
			(void) FUNC0(fd);
			return (lk.zl_retcode);
		}

		(void) FUNC14("succeeded.\n");
		if (lk.zl_reqflags & ZUT_IGNORECASE) {
			(void) FUNC14("----------------------------\n");
			(void) FUNC14("dirent flags: 0x%0x\n", lk.zl_deflags);
			(void) FUNC14("real name: %s\n", lk.zl_real);
		}
		if (lk.zl_reqflags & ZUT_GETSTAT) {
			(void) FUNC14("----------------------------\n");
			FUNC12(&lk.zl_statbuf);
			FUNC13(lk.zl_xvattrs);
		}
	}

	(void) FUNC0(fd);
	return (0);
}