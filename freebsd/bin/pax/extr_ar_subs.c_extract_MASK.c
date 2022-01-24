#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct stat {scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
typedef  scalar_t__ off_t ;
struct TYPE_18__ {scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_2__* pat; scalar_t__ pad; scalar_t__ skip; int /*<<< orphan*/  name; TYPE_1__ sb; } ;
struct TYPE_19__ {int /*<<< orphan*/ * chdname; } ;
struct TYPE_17__ {scalar_t__ (* options ) () ;scalar_t__ (* st_rd ) () ;int (* rd_data ) (TYPE_3__*,int,scalar_t__*) ;int /*<<< orphan*/  (* end_rd ) () ;} ;
typedef  TYPE_3__ ARCHD ;

/* Variables and functions */
 scalar_t__ Dflag ; 
 scalar_t__ PAX_CTG ; 
 scalar_t__ PAX_HLK ; 
 scalar_t__ PAX_HRG ; 
 scalar_t__ PAX_REG ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 scalar_t__ Yflag ; 
 scalar_t__ Zflag ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cwdfd ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_14__* frmt ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  listf ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (TYPE_3__*) ; 
 scalar_t__ FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  s_mask ; 
 scalar_t__ FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 () ; 
 scalar_t__ FUNC25 () ; 
 int FUNC26 (TYPE_3__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 scalar_t__ uflag ; 
 int vflag ; 
 int vfpart ; 

void
FUNC30(void)
{
	ARCHD *arcn;
	int res;
	off_t cnt;
	ARCHD archd;
	struct stat sb;
	int fd;
	time_t now;

	arcn = &archd;
	/*
	 * figure out archive type; pass any format specific options to the
	 * archive option processing routine; call the format init routine;
	 * start up the directory modification time and access mode database
	 */
	if ((FUNC7() < 0) || ((*frmt->options)() < 0) ||
	    ((*frmt->st_rd)() < 0) || (FUNC2() < 0))
		return;

	/*
	 * When we are doing interactive rename, we store the mapping of names
	 * so we can fix up hard links files later in the archive.
	 */
	if (iflag && (FUNC12() < 0))
		return;

	now = FUNC29(NULL);

	/*
	 * step through each entry on the archive until the format read routine
	 * says it is done
	 */
	while (FUNC13(arcn) == 0) {

		/*
		 * check for pattern, and user specified options match. When
		 * all the patterns are matched we are done
		 */
		if ((res = FUNC16(arcn)) < 0)
			break;

		if ((res > 0) || (FUNC22(arcn) != 0)) {
			/*
			 * file is not selected. skip past any file data and
			 * padding and go back for the next archive member
			 */
			(void)FUNC21(arcn->skip + arcn->pad);
			continue;
		}

		/*
		 * with -u or -D only extract when the archive member is newer
		 * than the file with the same name in the file system (nos
		 * test of being the same type is required).
		 * NOTE: this test is done BEFORE name modifications as
		 * specified by pax. this operation can be confusing to the
		 * user who might expect the test to be done on an existing
		 * file AFTER the name mod. In honesty the pax spec is probably
		 * flawed in this respect.
		 */
		if ((uflag || Dflag) && ((FUNC10(arcn->name, &sb) == 0))) {
			if (uflag && Dflag) {
				if ((arcn->sb.st_mtime <= sb.st_mtime) &&
				    (arcn->sb.st_ctime <= sb.st_ctime)) {
					(void)FUNC21(arcn->skip + arcn->pad);
					continue;
				}
			} else if (Dflag) {
				if (arcn->sb.st_ctime <= sb.st_ctime) {
					(void)FUNC21(arcn->skip + arcn->pad);
					continue;
				}
			} else if (arcn->sb.st_mtime <= sb.st_mtime) {
				(void)FUNC21(arcn->skip + arcn->pad);
				continue;
			}
		}

		/*
		 * this archive member is now been selected. modify the name.
		 */
		if ((FUNC17(arcn) < 0) || ((res = FUNC11(arcn)) < 0))
			break;
		if (res > 0) {
			/*
			 * a bad name mod, skip and purge name from link table
			 */
			FUNC19(arcn);
			(void)FUNC21(arcn->skip + arcn->pad);
			continue;
		}

		/*
		 * Non standard -Y and -Z flag. When the existing file is
		 * same age or newer skip
		 */
		if ((Yflag || Zflag) && ((FUNC10(arcn->name, &sb) == 0))) {
			if (Yflag && Zflag) {
				if ((arcn->sb.st_mtime <= sb.st_mtime) &&
				    (arcn->sb.st_ctime <= sb.st_ctime)) {
					(void)FUNC21(arcn->skip + arcn->pad);
					continue;
				}
			} else if (Yflag) {
				if (arcn->sb.st_ctime <= sb.st_ctime) {
					(void)FUNC21(arcn->skip + arcn->pad);
					continue;
				}
			} else if (arcn->sb.st_mtime <= sb.st_mtime) {
				(void)FUNC21(arcn->skip + arcn->pad);
				continue;
			}
		}

		if (vflag) {
			if (vflag > 1)
				FUNC9(arcn, now, listf);
			else {
				(void)FUNC6(arcn->name, listf);
				vfpart = 1;
			}
		}

		/*
		 * if required, chdir around.
		 */
		if ((arcn->pat != NULL) && (arcn->pat->chdname != NULL))
			if (FUNC1(arcn->pat->chdname) != 0)
				FUNC28(1, errno, "Cannot chdir to %s",
				    arcn->pat->chdname);

		/*
		 * all ok, extract this member based on type
		 */
		if ((arcn->type != PAX_REG) && (arcn->type != PAX_CTG)) {
			/*
			 * process archive members that are not regular files.
			 * throw out padding and any data that might follow the
			 * header (as determined by the format).
			 */
			if ((arcn->type == PAX_HLK) || (arcn->type == PAX_HRG))
				res = FUNC8(arcn);
			else
				res = FUNC14(arcn);

			(void)FUNC21(arcn->skip + arcn->pad);
			if (res < 0)
				FUNC19(arcn);

			if (vflag && vfpart) {
				(void)FUNC20('\n', listf);
				vfpart = 0;
			}
			continue;
		}
		/*
		 * we have a file with data here. If we can not create it, skip
		 * over the data and purge the name from hard link table
		 */
		if ((fd = FUNC5(arcn)) < 0) {
			(void)FUNC21(arcn->skip + arcn->pad);
			FUNC19(arcn);
			continue;
		}
		/*
		 * extract the file from the archive and skip over padding and
		 * any unprocessed data
		 */
		res = (*frmt->rd_data)(arcn, fd, &cnt);
		FUNC4(arcn, fd);
		if (vflag && vfpart) {
			(void)FUNC20('\n', listf);
			vfpart = 0;
		}
		if (!res)
			(void)FUNC21(cnt + arcn->pad);

		/*
		 * if required, chdir around.
		 */
		if ((arcn->pat != NULL) && (arcn->pat->chdname != NULL))
			if (FUNC3(cwdfd) != 0)
				FUNC28(1, errno,
				    "Can't fchdir to starting directory");
	}

	/*
	 * all done, restore directory modes and times as required; make sure
	 * all patterns supplied by the user were matched; block off signals
	 * to avoid chance for multiple entry into the cleanup code.
	 */
	(void)(*frmt->end_rd)();
	(void)FUNC23(SIG_BLOCK, &s_mask, NULL);
	FUNC0();
	FUNC18();
	FUNC15();
}