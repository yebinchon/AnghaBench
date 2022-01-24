#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  scalar_t__ off_t ;
struct TYPE_18__ {scalar_t__ type; scalar_t__ pad; int /*<<< orphan*/  name; int /*<<< orphan*/  org_name; } ;
struct TYPE_17__ {int hlk; scalar_t__ (* st_wr ) () ;int (* wr ) (TYPE_1__*) ;int (* wr_data ) (TYPE_1__*,int,scalar_t__*) ;int /*<<< orphan*/  (* end_wr ) () ;} ;
typedef  TYPE_1__ ARCHD ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ PAX_CTG ; 
 scalar_t__ PAX_HRG ; 
 scalar_t__ PAX_REG ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ docrc ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  flcnt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_14__* frmt ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  listf ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  s_mask ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 scalar_t__ FUNC19 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 () ; 
 int FUNC22 (TYPE_1__*) ; 
 int FUNC23 (TYPE_1__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ tflag ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ uflag ; 
 int vflag ; 
 int vfpart ; 
 int /*<<< orphan*/  FUNC27 () ; 
 scalar_t__ FUNC28 (scalar_t__) ; 

__attribute__((used)) static void
FUNC29(ARCHD *arcn, int is_app)
{
	int res;
	int hlk;
	int wr_one;
	off_t cnt;
	int (*wrf)(ARCHD *);
	int fd = -1;
	time_t now;

	/*
	 * if this format supports hard link storage, start up the database
	 * that detects them.
	 */
	if (((hlk = frmt->hlk) == 1) && (FUNC8() < 0))
		return;

	/*
	 * start up the file traversal code and format specific write
	 */
	if ((FUNC7() < 0) || ((*frmt->st_wr)() < 0))
		return;
	wrf = frmt->wr;

	/*
	 * When we are doing interactive rename, we store the mapping of names
	 * so we can fix up hard links files later in the archive.
	 */
	if (iflag && (FUNC11() < 0))
		return;

	/*
	 * if this not append, and there are no files, we do no write a trailer
	 */
	wr_one = is_app;

	now = FUNC26(NULL);

	/*
	 * while there are files to archive, process them one at at time
	 */
	while (FUNC12(arcn) == 0) {
		/*
		 * check if this file meets user specified options match.
		 */
		if (FUNC18(arcn) != 0) {
			FUNC5();
			continue;
		}
		fd = -1;
		if (uflag) {
			/*
			 * only archive if this file is newer than a file with
			 * the same name that is already stored on the archive
			 */
			if ((res = FUNC1(arcn)) < 0)
				break;
			if (res > 0)
				continue;
		}

		/*
		 * this file is considered selected now. see if this is a hard
		 * link to a file already stored
		 */
		FUNC6(arcn);
		if (hlk && (FUNC2(arcn) < 0))
			break;

		if ((arcn->type == PAX_REG) || (arcn->type == PAX_HRG) ||
		    (arcn->type == PAX_CTG)) {
			/*
			 * we will have to read this file. by opening it now we
			 * can avoid writing a header to the archive for a file
			 * we were later unable to read (we also purge it from
			 * the link table).
			 */
			if ((fd = FUNC13(arcn->org_name, O_RDONLY, 0)) < 0) {
				FUNC25(1,errno, "Unable to open %s to read",
					arcn->org_name);
				FUNC15(arcn);
				continue;
			}
		}

		/*
		 * Now modify the name as requested by the user
		 */
		if ((res = FUNC10(arcn)) < 0) {
			/*
			 * name modification says to skip this file, close the
			 * file and purge link table entry
			 */
			FUNC17(arcn, &fd);
			FUNC15(arcn);
			break;
		}

		if ((res > 0) || (docrc && (FUNC19(arcn, fd) < 0))) {
			/*
			 * unable to obtain the crc we need, close the file,
			 * purge link table entry
			 */
			FUNC17(arcn, &fd);
			FUNC15(arcn);
			continue;
		}

		if (vflag) {
			if (vflag > 1)
				FUNC9(arcn, now, listf);
			else {
				(void)FUNC3(arcn->name, listf);
				vfpart = 1;
			}
		}
		++flcnt;

		/*
		 * looks safe to store the file, have the format specific
		 * routine write routine store the file header on the archive
		 */
		if ((res = (*wrf)(arcn)) < 0) {
			FUNC17(arcn, &fd);
			break;
		}
		wr_one = 1;
		if (res > 0) {
			/*
			 * format write says no file data needs to be stored
			 * so we are done messing with this file
			 */
			if (vflag && vfpart) {
				(void)FUNC16('\n', listf);
				vfpart = 0;
			}
			FUNC17(arcn, &fd);
			continue;
		}

		/*
		 * Add file data to the archive, quit on write error. if we
		 * cannot write the entire file contents to the archive we
		 * must pad the archive to replace the missing file data
		 * (otherwise during an extract the file header for the file
		 * which FOLLOWS this one will not be where we expect it to
		 * be).
		 */
		res = (*frmt->wr_data)(arcn, fd, &cnt);
		FUNC17(arcn, &fd);
		if (vflag && vfpart) {
			(void)FUNC16('\n', listf);
			vfpart = 0;
		}
		if (res < 0)
			break;

		/*
		 * pad as required, cnt is number of bytes not written
		 */
		if (((cnt > 0) && (FUNC28(cnt) < 0)) ||
		    ((arcn->pad > 0) && (FUNC28(arcn->pad) < 0)))
			break;
	}

	/*
	 * tell format to write trailer; pad to block boundary; reset directory
	 * mode/access times, and check if all patterns supplied by the user
	 * were matched. block off signals to avoid chance for multiple entry
	 * into the cleanup code
	 */
	if (wr_one) {
		(*frmt->end_wr)();
		FUNC27();
	}
	(void)FUNC20(SIG_BLOCK, &s_mask, NULL);
	FUNC0();
	if (tflag)
		FUNC14();
	FUNC4();
}