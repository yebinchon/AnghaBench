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
struct ocfs2_dir_block_trailer {unsigned long long db_signature; int /*<<< orphan*/  db_blkno; int /*<<< orphan*/  db_parent_dinode; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dir_block_trailer*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,...) ; 
 struct ocfs2_dir_block_trailer* FUNC4 (struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *dir, struct buffer_head *bh)
{
	int rc = 0;
	struct ocfs2_dir_block_trailer *trailer;

	trailer = FUNC4(bh, dir->i_sb);
	if (!FUNC1(trailer)) {
		rc = -EINVAL;
		FUNC3(dir->i_sb,
			    "Invalid dirblock #%llu: "
			    "signature = %.*s\n",
			    (unsigned long long)bh->b_blocknr, 7,
			    trailer->db_signature);
		goto out;
	}
	if (FUNC2(trailer->db_blkno) != bh->b_blocknr) {
		rc = -EINVAL;
		FUNC3(dir->i_sb,
			    "Directory block #%llu has an invalid "
			    "db_blkno of %llu",
			    (unsigned long long)bh->b_blocknr,
			    (unsigned long long)FUNC2(trailer->db_blkno));
		goto out;
	}
	if (FUNC2(trailer->db_parent_dinode) !=
	    FUNC0(dir)->ip_blkno) {
		rc = -EINVAL;
		FUNC3(dir->i_sb,
			    "Directory block #%llu on dinode "
			    "#%llu has an invalid parent_dinode "
			    "of %llu",
			    (unsigned long long)bh->b_blocknr,
			    (unsigned long long)FUNC0(dir)->ip_blkno,
			    (unsigned long long)FUNC2(trailer->db_blkno));
		goto out;
	}
out:
	return rc;
}