#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;
struct TYPE_5__ {TYPE_1__ sb; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ ARCHD ;

/* Variables and functions */
 int /*<<< orphan*/  SETBITS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ patime ; 
 scalar_t__ pids ; 
 scalar_t__ pmode ; 
 scalar_t__ pmtime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC5(ARCHD *arcn, int fd)
{
	int res = 0;

	if (fd < 0)
		return;
	if (FUNC0(fd) < 0)
		FUNC4(0, errno, "Unable to close file descriptor on %s",
		    arcn->name);

	/*
	 * set owner/groups first as this may strip off mode bits we want
	 * then set file permission modes. Then set file access and
	 * modification times.
	 */
	if (pids)
		res = FUNC2(arcn->name, arcn->sb.st_uid, arcn->sb.st_gid);

	/*
	 * IMPORTANT SECURITY NOTE:
	 * if not preserving mode or we cannot set uid/gid, then PROHIBIT
	 * set uid/gid bits
	 */
	if (!pmode || res)
		arcn->sb.st_mode &= ~(SETBITS);
	if (pmode)
		FUNC3(arcn->name, arcn->sb.st_mode);
	if (patime || pmtime)
		FUNC1(arcn->name, arcn->sb.st_mtime, arcn->sb.st_atime, 0);
}