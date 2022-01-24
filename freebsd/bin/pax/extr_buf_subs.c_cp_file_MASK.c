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
struct stat {int st_blksize; scalar_t__ st_mtime; } ;
typedef  long off_t ;
struct TYPE_4__ {int st_blocks; long st_size; scalar_t__ st_mtime; } ;
struct TYPE_5__ {char* name; char* org_name; TYPE_1__ sb; } ;
typedef  TYPE_2__ ARCHD ;

/* Variables and functions */
 int BLKMULT ; 
 int MINFBSZ ; 
 int /*<<< orphan*/  blksz ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int,int*,int*,int,char*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC7(ARCHD *arcn, int fd1, int fd2)
{
	int cnt;
	off_t cpcnt = 0L;
	int res = 0;
	char *fnm = arcn->name;
	int no_hole = 0;
	int isem = 1;
	int rem;
	int sz = MINFBSZ;
	struct stat sb;

	/*
	 * check for holes in the source file. If none, we will use regular
	 * write instead of file write.
	 */
	 if (((off_t)(arcn->sb.st_blocks * BLKMULT)) >= arcn->sb.st_size)
		++no_hole;

	/*
	 * pass the blocksize of the file being written to the write routine,
	 * if the size is zero, use the default MINFBSZ
	 */
	if (FUNC2(fd2, &sb) == 0) {
		if (sb.st_blksize > 0)
			sz = sb.st_blksize;
	} else
		FUNC5(0,errno,"Unable to obtain block size for file %s",fnm);
	rem = sz;

	/*
	 * read the source file and copy to destination file until EOF
	 */
	for(;;) {
		if ((cnt = FUNC4(fd1, buf, blksz)) <= 0)
			break;
		if (no_hole)
			res = FUNC6(fd2, buf, cnt);
		else
			res = FUNC1(fd2, buf, cnt, &rem, &isem, sz, fnm);
		if (res != cnt)
			break;
		cpcnt += cnt;
	}

	/*
	 * check to make sure the copy is valid.
	 */
	if (res < 0)
		FUNC5(1, errno, "Failed write during copy of %s to %s",
			arcn->org_name, arcn->name);
	else if (cpcnt != arcn->sb.st_size)
		FUNC3(1, "File %s changed size during copy to %s",
			arcn->org_name, arcn->name);
	else if (FUNC2(fd1, &sb) < 0)
		FUNC5(1, errno, "Failed stat of %s", arcn->org_name);
	else if (arcn->sb.st_mtime != sb.st_mtime)
		FUNC3(1, "File %s was modified during copy to %s",
			arcn->org_name, arcn->name);

	/*
	 * if the last block has a file hole (all zero), we must make sure this
	 * gets updated in the file. We force the last block of zeros to be
	 * written. just closing with the file offset moved forward may not put
	 * a hole at the end of the file.
	 */
	if (!no_hole && isem && (arcn->sb.st_size > 0L))
		FUNC0(fd2, fnm, isem);
	return;
}