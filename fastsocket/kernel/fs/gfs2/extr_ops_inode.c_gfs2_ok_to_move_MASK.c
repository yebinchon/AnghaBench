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
struct super_block {TYPE_1__* s_root; } ;
struct inode {struct super_block* i_sb; } ;
struct gfs2_inode {struct inode i_inode; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  gfs2_qdotdot ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct gfs2_inode *this, struct gfs2_inode *to)
{
	struct inode *dir = &to->i_inode;
	struct super_block *sb = dir->i_sb;
	struct inode *tmp;
	int error = 0;

	FUNC3(dir);

	for (;;) {
		if (dir == &this->i_inode) {
			error = -EINVAL;
			break;
		}
		if (dir == sb->s_root->d_inode) {
			error = 0;
			break;
		}

		tmp = FUNC2(dir, &gfs2_qdotdot, 1);
		if (FUNC0(tmp)) {
			error = FUNC1(tmp);
			break;
		}

		FUNC4(dir);
		dir = tmp;
	}

	FUNC4(dir);

	return error;
}