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
typedef  int u64 ;
struct TYPE_2__ {int sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_jdesc {int jd_blocks; int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct gfs2_jdesc *jd)
{
	struct gfs2_inode *ip = FUNC0(jd->jd_inode);
	struct gfs2_sbd *sdp = FUNC1(jd->jd_inode);
	u64 size = FUNC5(jd->jd_inode);
	int ar;
	int error;

	if (FUNC2(jd->jd_inode, 8 << 20, 1 << 30))
		return -EIO;

	jd->jd_blocks = size >> sdp->sd_sb.sb_bsize_shift;

	error = FUNC4(ip, 0, size, &ar);
	if (!error && ar) {
		FUNC3(ip);
		error = -EIO;
	}

	return error;
}