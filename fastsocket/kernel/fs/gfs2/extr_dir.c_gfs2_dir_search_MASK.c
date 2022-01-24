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
struct qstr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  no_formal_ino; int /*<<< orphan*/  no_addr; } ;
struct gfs2_dirent {TYPE_1__ de_inum; int /*<<< orphan*/  de_type; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct inode* FUNC0 (struct gfs2_dirent*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  gfs2_dirent_find ; 
 struct gfs2_dirent* FUNC6 (struct inode*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct inode *FUNC8(struct inode *dir, const struct qstr *name)
{
	struct buffer_head *bh;
	struct gfs2_dirent *dent;
	struct inode *inode;

	dent = FUNC6(dir, name, gfs2_dirent_find, &bh);
	if (dent) {
		if (FUNC2(dent))
			return FUNC0(dent);
		inode = FUNC7(dir->i_sb, 
				FUNC3(dent->de_type),
				FUNC4(dent->de_inum.no_addr),
				FUNC4(dent->de_inum.no_formal_ino), 0);
		FUNC5(bh);
		return inode;
	}
	return FUNC1(-ENOENT);
}