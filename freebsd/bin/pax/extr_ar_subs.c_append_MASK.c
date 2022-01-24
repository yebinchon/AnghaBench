#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_10__ {scalar_t__ pad; scalar_t__ skip; } ;
struct TYPE_9__ {scalar_t__ (* options ) () ;scalar_t__ (* st_rd ) () ;int udev; int /*<<< orphan*/  (* end_rd ) () ;int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ FSUB ;
typedef  TYPE_2__ ARCHD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* argv0 ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* frmt ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  listf ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ uflag ; 
 scalar_t__ vflag ; 
 int vfpart ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 

void
FUNC17(void)
{
	ARCHD *arcn;
	int res;
	ARCHD archd;
	FSUB *orgfrmt;
	int udev;
	off_t tlen;

	arcn = &archd;
	orgfrmt = frmt;

	/*
	 * Do not allow an append operation if the actual archive is of a
	 * different format than the user specified format.
	 */
	if (FUNC7() < 0)
		return;
	if ((orgfrmt != NULL) && (orgfrmt != frmt)) {
		FUNC10(1, "Cannot mix current archive format %s with %s",
		    frmt->name, orgfrmt->name);
		return;
	}

	/*
	 * pass the format any options and start up format
	 */
	if (((*frmt->options)() < 0) || ((*frmt->st_rd)() < 0))
		return;

	/*
	 * if we only are adding members that are newer, we need to save the
	 * mod times for all files we see.
	 */
	if (uflag && (FUNC6() < 0))
		return;

	/*
	 * some archive formats encode hard links by recording the device and
	 * file serial number (inode) but copy the file anyway (multiple times)
	 * to the archive. When we append, we run the risk that newly added
	 * files may have the same device and inode numbers as those recorded
	 * on the archive but during a previous run. If this happens, when the
	 * archive is extracted we get INCORRECT hard links. We avoid this by
	 * remapping the device numbers so that newly added files will never
	 * use the same device number as one found on the archive. remapping
	 * allows new members to safely have links among themselves. remapping
	 * also avoids problems with file inode (serial number) truncations
	 * when the inode number is larger than storage space in the archive
	 * header. See the remap routines for more details.
	 */
	if ((udev = frmt->udev) && (FUNC3() < 0))
		return;

	/*
	 * reading the archive may take a long time. If verbose tell the user
	 */
	if (vflag) {
		(void)FUNC4(listf,
			"%s: Reading archive to position at the end...", argv0);
		vfpart = 1;
	}

	/*
	 * step through the archive until the format says it is done
	 */
	while (FUNC9(arcn) == 0) {
		/*
		 * check if this file meets user specified options.
		 */
		if (FUNC12(arcn) != 0) {
			if (FUNC11(arcn->skip + arcn->pad) == 1)
				break;
			continue;
		}

		if (uflag) {
			/*
			 * see if this is the newest version of this file has
			 * already been seen, if so skip.
			 */
			if ((res = FUNC2(arcn)) < 0)
				break;
			if (res > 0) {
				if (FUNC11(arcn->skip + arcn->pad) == 1)
					break;
				continue;
			}
		}

		/*
		 * Store this device number. Device numbers seen during the
		 * read phase of append will cause newly appended files with a
		 * device number seen in the old part of the archive to be
		 * remapped to an unused device number.
		 */
		if ((udev && (FUNC0(arcn) < 0)) ||
		    (FUNC11(arcn->skip + arcn->pad) == 1))
			break;
	}

	/*
	 * done, finish up read and get the number of bytes to back up so we
	 * can add new members. The format might have used the hard link table,
	 * purge it.
	 */
	tlen = (*frmt->end_rd)();
	FUNC8();

	/*
	 * try to position for write, if this fails quit. if any error occurs,
	 * we will refuse to write
	 */
	if (FUNC1(tlen) < 0)
		return;

	/*
	 * tell the user we are done reading.
	 */
	if (vflag && vfpart) {
		(void)FUNC5("done.\n", listf);
		vfpart = 0;
	}

	/*
	 * go to the writing phase to add the new members
	 */
	FUNC16(arcn, 1);
}