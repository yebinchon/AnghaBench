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
struct TYPE_2__ {int /*<<< orphan*/  i_ino; } ;
struct nilfs_inode_info {TYPE_1__ vfs_inode; int /*<<< orphan*/  i_bmap; struct buffer_head* i_bh; int /*<<< orphan*/  i_state; } ;
struct nilfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NILFS_I_BMAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nilfs_inode*) ; 
 struct nilfs_inode* FUNC2 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inode *ifile,
				    struct nilfs_inode_info *ii)

{
	struct buffer_head *ibh;
	struct nilfs_inode *raw_inode;

	if (FUNC4(NILFS_I_BMAP, &ii->i_state)) {
		ibh = ii->i_bh;
		FUNC0(!ibh);
		raw_inode = FUNC2(ifile, ii->vfs_inode.i_ino,
						  ibh);
		FUNC1(ii->i_bmap, raw_inode);
		FUNC3(ifile, ii->vfs_inode.i_ino, ibh);
	}
}