#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;
struct TYPE_3__ {scalar_t__ s_blocksize_bits; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,unsigned long long,unsigned long long,unsigned long long) ; 
 int FUNC4 (struct inode*,scalar_t__,int,struct buffer_head**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_validate_quota_block ; 

int FUNC5(struct inode *inode, u64 v_block,
			   struct buffer_head **bh)
{
	int rc = 0;
	struct buffer_head *tmp = *bh;

	if (FUNC1(inode) >> inode->i_sb->s_blocksize_bits <= v_block) {
		FUNC3(inode->i_sb,
			    "Quota file %llu is probably corrupted! Requested "
			    "to read block %Lu but file has size only %Lu\n",
			    (unsigned long long)FUNC0(inode)->ip_blkno,
			    (unsigned long long)v_block,
			    (unsigned long long)FUNC1(inode));
		return -EIO;
	}
	rc = FUNC4(inode, v_block, 1, &tmp, 0,
				    ocfs2_validate_quota_block);
	if (rc)
		FUNC2(rc);

	/* If ocfs2_read_virt_blocks() got us a new bh, pass it up. */
	if (!rc && !*bh)
		*bh = tmp;

	return rc;
}