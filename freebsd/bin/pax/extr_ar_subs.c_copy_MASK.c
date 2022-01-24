#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_mtime; scalar_t__ st_ctime; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  dirbuf ;
struct TYPE_18__ {scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
struct TYPE_19__ {char* name; int nlen; scalar_t__ type; char* org_name; TYPE_1__ sb; } ;
typedef  TYPE_2__ ARCHD ;

/* Variables and functions */
 scalar_t__ Dflag ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PAXPATHLEN ; 
 scalar_t__ PAX_CTG ; 
 scalar_t__ PAX_HLK ; 
 scalar_t__ PAX_HRG ; 
 scalar_t__ PAX_REG ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ Yflag ; 
 scalar_t__ Zflag ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 () ; 
 char* dirptr ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  flcnt ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ iflag ; 
 int FUNC15 (char*,char*,int) ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  listf ; 
 int FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 (char*,struct stat*) ; 
 int FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 int FUNC22 (TYPE_2__*) ; 
 int FUNC23 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  s_mask ; 
 scalar_t__ FUNC29 (TYPE_2__*) ; 
 scalar_t__ FUNC30 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC33 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC34 (int,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ uflag ; 
 scalar_t__ vflag ; 
 int vfpart ; 

void
FUNC35(void)
{
	ARCHD *arcn;
	int res;
	int fddest;
	char *dest_pt;
	int dlen;
	int drem;
	int fdsrc = -1;
	struct stat sb;
	ARCHD archd;
	char dirbuf[PAXPATHLEN+1];

	arcn = &archd;
	/*
	 * set up the destination dir path and make sure it is a directory. We
	 * make sure we have a trailing / on the destination
	 */
	dlen = FUNC15(dirbuf, dirptr, sizeof(dirbuf) - 1);
	dest_pt = dirbuf + dlen;
	if (*(dest_pt-1) != '/') {
		*dest_pt++ = '/';
		++dlen;
	}
	*dest_pt = '\0';
	drem = PAXPATHLEN - dlen;

	if (FUNC32(dirptr, &sb) < 0) {
		FUNC34(1, errno, "Cannot access destination directory %s",
			dirptr);
		return;
	}
	if (!FUNC0(sb.st_mode)) {
		FUNC24(1, "Destination is not a directory %s", dirptr);
		return;
	}

	/*
	 * start up the hard link table; file traversal routines and the
	 * modification time and access mode database
	 */
	if ((FUNC17() < 0) || (FUNC14() < 0) || (FUNC7() < 0))
		return;

	/*
	 * When we are doing interactive rename, we store the mapping of names
	 * so we can fix up hard links files later in the archive.
	 */
	if (iflag && (FUNC20() < 0))
		return;

	/*
	 * set up to cp file trees
	 */
	FUNC5();

	/*
	 * while there are files to archive, process them
	 */
	while (FUNC21(arcn) == 0) {
		fdsrc = -1;

		/*
		 * check if this file meets user specified options
		 */
		if (FUNC29(arcn) != 0) {
			FUNC12();
			continue;
		}

		/*
		 * if there is already a file in the destination directory with
		 * the same name and it is newer, skip the one stored on the
		 * archive.
		 * NOTE: this test is done BEFORE name modifications as
		 * specified by pax. this can be confusing to the user who
		 * might expect the test to be done on an existing file AFTER
		 * the name mod. In honesty the pax spec is probably flawed in
		 * this respect
		 */
		if (uflag || Dflag) {
			/*
			 * create the destination name
			 */
			if (*(arcn->name) == '/')
				res = 1;
			else
				res = 0;
			if ((arcn->nlen - res) > drem) {
				FUNC24(1, "Destination pathname too long %s",
					arcn->name);
				continue;
			}
			(void)FUNC33(dest_pt, arcn->name + res, drem);
			dirbuf[PAXPATHLEN] = '\0';

			/*
			 * if existing file is same age or newer skip
			 */
			res = FUNC18(dirbuf, &sb);
			*dest_pt = '\0';

		    	if (res == 0) {
				if (uflag && Dflag) {
					if ((arcn->sb.st_mtime<=sb.st_mtime) &&
			    		    (arcn->sb.st_ctime<=sb.st_ctime))
						continue;
				} else if (Dflag) {
					if (arcn->sb.st_ctime <= sb.st_ctime)
						continue;
				} else if (arcn->sb.st_mtime <= sb.st_mtime)
					continue;
			}
		}

		/*
		 * this file is considered selected. See if this is a hard link
		 * to a previous file; modify the name as requested by the
		 * user; set the final destination.
		 */
		FUNC13(arcn);
		if ((FUNC2(arcn) < 0) || ((res = FUNC19(arcn)) < 0))
			break;
		if ((res > 0) || (FUNC30(arcn, dirbuf, dlen) < 0)) {
			/*
			 * skip file, purge from link table
			 */
			FUNC26(arcn);
			continue;
		}

		/*
		 * Non standard -Y and -Z flag. When the existing file is
		 * same age or newer skip
		 */
		if ((Yflag || Zflag) && ((FUNC18(arcn->name, &sb) == 0))) {
			if (Yflag && Zflag) {
				if ((arcn->sb.st_mtime <= sb.st_mtime) &&
				    (arcn->sb.st_ctime <= sb.st_ctime))
					continue;
			} else if (Yflag) {
				if (arcn->sb.st_ctime <= sb.st_ctime)
					continue;
			} else if (arcn->sb.st_mtime <= sb.st_mtime)
				continue;
		}

		if (vflag) {
			(void)FUNC10(arcn->name, listf);
			vfpart = 1;
		}
		++flcnt;

		/*
		 * try to create a hard link to the src file if requested
		 * but make sure we are not trying to overwrite ourselves.
		 */
		if (lflag)
			res = FUNC6(arcn);
		else
			res = FUNC3(arcn);
		if (res <= 0) {
			if (vflag && vfpart) {
				(void)FUNC27('\n', listf);
				vfpart = 0;
			}
			continue;
		}

		/*
		 * have to create a new file
		 */
		if ((arcn->type != PAX_REG) && (arcn->type != PAX_CTG)) {
			/*
			 * create a link or special file
			 */
			if ((arcn->type == PAX_HLK) || (arcn->type == PAX_HRG))
				res = FUNC16(arcn);
			else
				res = FUNC22(arcn);
			if (res < 0)
				FUNC26(arcn);
			if (vflag && vfpart) {
				(void)FUNC27('\n', listf);
				vfpart = 0;
			}
			continue;
		}

		/*
		 * have to copy a regular file to the destination directory.
		 * first open source file and then create the destination file
		 */
		if ((fdsrc = FUNC23(arcn->org_name, O_RDONLY, 0)) < 0) {
			FUNC34(1, errno, "Unable to open %s to read",
			    arcn->org_name);
			FUNC26(arcn);
			continue;
		}
		if ((fddest = FUNC9(arcn)) < 0) {
			FUNC28(arcn, &fdsrc);
			FUNC26(arcn);
			continue;
		}

		/*
		 * copy source file data to the destination file
		 */
		FUNC4(arcn, fdsrc, fddest);
		FUNC8(arcn, fddest);
		FUNC28(arcn, &fdsrc);

		if (vflag && vfpart) {
			(void)FUNC27('\n', listf);
			vfpart = 0;
		}
	}

	/*
	 * restore directory modes and times as required; make sure all
	 * patterns were selected block off signals to avoid chance for
	 * multiple entry into the cleanup code.
	 */
	(void)FUNC31(SIG_BLOCK, &s_mask, NULL);
	FUNC1();
	FUNC25();
	FUNC11();
}