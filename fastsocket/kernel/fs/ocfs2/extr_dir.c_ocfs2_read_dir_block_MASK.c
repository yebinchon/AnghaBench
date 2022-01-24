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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int OCFS2_BH_READAHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct inode*,struct buffer_head*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ,int,struct buffer_head**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  ocfs2_validate_dir_block ; 

__attribute__((used)) static int FUNC5(struct inode *inode, u64 v_block,
				struct buffer_head **bh, int flags)
{
	int rc = 0;
	struct buffer_head *tmp = *bh;

	rc = FUNC3(inode, v_block, 1, &tmp, flags,
				    ocfs2_validate_dir_block);
	if (rc) {
		FUNC1(rc);
		goto out;
	}

	if (!(flags & OCFS2_BH_READAHEAD) &&
	    FUNC4(inode)) {
		rc = FUNC2(inode, tmp);
		if (rc) {
			if (!*bh)
				FUNC0(tmp);
			FUNC1(rc);
			goto out;
		}
	}

	/* If ocfs2_read_virt_blocks() got us a new bh, pass it up. */
	if (!*bh)
		*bh = tmp;

out:
	return rc ? -EIO : 0;
}