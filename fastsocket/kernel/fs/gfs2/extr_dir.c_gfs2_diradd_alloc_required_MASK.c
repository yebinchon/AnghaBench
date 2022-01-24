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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gfs2_dirent*) ; 
 int FUNC1 (struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  gfs2_dirent_find_space ; 
 struct gfs2_dirent* FUNC3 (struct inode*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 

int FUNC4(struct inode *inode, const struct qstr *name)
{
	struct gfs2_dirent *dent;
	struct buffer_head *bh;

	dent = FUNC3(inode, name, gfs2_dirent_find_space, &bh);
	if (!dent) {
		return 1;
	}
	if (FUNC0(dent))
		return FUNC1(dent);
	FUNC2(bh);
	return 0;
}