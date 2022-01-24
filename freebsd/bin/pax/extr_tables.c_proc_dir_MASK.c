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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  dblk ;
struct TYPE_2__ {int nlen; int /*<<< orphan*/  atime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  mode; scalar_t__ frc_mode; int /*<<< orphan*/  npos; } ;
typedef  TYPE_1__ DIRDATA ;

/* Variables and functions */
 int /*<<< orphan*/  PAXPATHLEN ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ dircnt ; 
 int dirfd ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ patime ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ pmode ; 
 scalar_t__ pmtime ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
	char name[PAXPATHLEN+1];
	DIRDATA dblk;
	u_long cnt;

	if (dirfd < 0)
		return;
	/*
	 * read backwards through the file and process each directory
	 */
	for (cnt = 0; cnt < dircnt; ++cnt) {
		/*
		 * read the trailer, then the file name, if this fails
		 * just give up.
		 */
		if (FUNC1(dirfd, -((off_t)sizeof(dblk)), SEEK_CUR) < 0)
			break;
		if (FUNC3(dirfd,(char *)&dblk, sizeof(dblk)) != sizeof(dblk))
			break;
		if (FUNC1(dirfd, dblk.npos, SEEK_SET) < 0)
			break;
		if (FUNC3(dirfd, name, dblk.nlen) != dblk.nlen)
			break;
		if (FUNC1(dirfd, dblk.npos, SEEK_SET) < 0)
			break;

		/*
		 * frc_mode set, make sure we set the file modes even if
		 * the user didn't ask for it (see file_subs.c for more info)
		 */
		if (pmode || dblk.frc_mode)
			FUNC5(name, dblk.mode);
		if (patime || pmtime)
			FUNC4(name, dblk.mtime, dblk.atime, 0);
	}

	(void)FUNC0(dirfd);
	dirfd = -1;
	if (cnt != dircnt)
		FUNC2(1,"Unable to set mode and times for created directories");
	return;
}