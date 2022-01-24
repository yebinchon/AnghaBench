#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gfs2_log_header_host {int dummy; } ;
struct gfs2_jdesc {unsigned int jd_blocks; int /*<<< orphan*/  jd_inode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gfs2_jdesc*,unsigned int,struct gfs2_log_header_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gfs2_jdesc *jd, unsigned int *blk,
			struct gfs2_log_header_host *head)
{
	unsigned int orig_blk = *blk;
	int error;

	for (;;) {
		error = FUNC1(jd, *blk, head);
		if (error <= 0)
			return error;

		if (++*blk == jd->jd_blocks)
			*blk = 0;

		if (*blk == orig_blk) {
			FUNC2(FUNC0(jd->jd_inode));
			return -EIO;
		}
	}
}