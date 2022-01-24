#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct TYPE_8__ {int /*<<< orphan*/ * i1_data; } ;
struct minix_inode_info {TYPE_4__ u; } ;
struct minix_inode {int /*<<< orphan*/ * i_zone; int /*<<< orphan*/  i_time; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlinks; scalar_t__ i_gid; scalar_t__ i_uid; int /*<<< orphan*/  i_mode; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {scalar_t__ i_blocks; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlink; scalar_t__ i_gid; scalar_t__ i_uid; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct minix_inode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct minix_inode_info* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC8(struct inode *inode)
{
	struct buffer_head * bh;
	struct minix_inode * raw_inode;
	struct minix_inode_info *minix_inode = FUNC4(inode);
	int i;

	raw_inode = FUNC3(inode->i_sb, inode->i_ino, &bh);
	if (!raw_inode) {
		FUNC2(inode);
		return FUNC0(-EIO);
	}
	inode->i_mode = raw_inode->i_mode;
	inode->i_uid = (uid_t)raw_inode->i_uid;
	inode->i_gid = (gid_t)raw_inode->i_gid;
	inode->i_nlink = raw_inode->i_nlinks;
	inode->i_size = raw_inode->i_size;
	inode->i_mtime.tv_sec = inode->i_atime.tv_sec = inode->i_ctime.tv_sec = raw_inode->i_time;
	inode->i_mtime.tv_nsec = 0;
	inode->i_atime.tv_nsec = 0;
	inode->i_ctime.tv_nsec = 0;
	inode->i_blocks = 0;
	for (i = 0; i < 9; i++)
		minix_inode->u.i1_data[i] = raw_inode->i_zone[i];
	FUNC5(inode, FUNC6(raw_inode->i_zone[0]));
	FUNC1(bh);
	FUNC7(inode);
	return inode;
}