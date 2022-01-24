#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
struct TYPE_3__ {int flags; scalar_t__ offset; size_t dbsz; int /*<<< orphan*/  name; int /*<<< orphan*/  db; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int C_NOERROR ; 
 int ISPIPE ; 
 int ISSEEK ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int ddflags ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int files_cnt ; 
 TYPE_1__ in ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ need_progress ; 
 scalar_t__ need_summary ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
	off_t cnt;
	int warned;
	ssize_t nr;
	size_t bcnt;

	/* If known to be seekable, try to seek on it. */
	if (in.flags & ISSEEK) {
		errno = 0;
		if (FUNC2(in.fd, FUNC5(&in), SEEK_CUR) == -1 &&
		    errno != 0)
			FUNC0(1, "%s", in.name);
		return;
	}

	/* Don't try to read a really weird amount (like negative). */
	if (in.offset < 0)
		FUNC1(1, "%s: illegal offset", "iseek/skip");

	/*
	 * Read the data.  If a pipe, read until satisfy the number of bytes
	 * being skipped.  No differentiation for reading complete and partial
	 * blocks for other devices.
	 */
	for (bcnt = in.dbsz, cnt = in.offset, warned = 0; cnt;) {
		if ((nr = FUNC4(in.fd, in.db, bcnt)) > 0) {
			if (in.flags & ISPIPE) {
				if (!(bcnt -= nr)) {
					bcnt = in.dbsz;
					--cnt;
				}
			} else
				--cnt;
			if (need_summary)
				FUNC6();
			if (need_progress)
				FUNC3();
			continue;
		}

		if (nr == 0) {
			if (files_cnt > 1) {
				--files_cnt;
				continue;
			}
			FUNC1(1, "skip reached end of input");
		}

		/*
		 * Input error -- either EOF with no more files, or I/O error.
		 * If noerror not set die.  POSIX requires that the warning
		 * message be followed by an I/O display.
		 */
		if (ddflags & C_NOERROR) {
			if (!warned) {
				FUNC7("%s", in.name);
				warned = 1;
				FUNC6();
			}
			continue;
		}
		FUNC0(1, "%s", in.name);
	}
}