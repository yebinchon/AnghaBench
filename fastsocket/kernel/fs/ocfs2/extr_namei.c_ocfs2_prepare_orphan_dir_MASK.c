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
struct ocfs2_super {int /*<<< orphan*/  slot_num; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  OCFS2_ORPHAN_NAMELEN ; 
 int /*<<< orphan*/  ORPHAN_DIR_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct inode* FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int FUNC10 (struct ocfs2_super*,struct inode*,struct buffer_head*,char*,int /*<<< orphan*/ ,struct ocfs2_dir_lookup_result*) ; 

__attribute__((used)) static int FUNC11(struct ocfs2_super *osb,
				    struct inode **ret_orphan_dir,
				    u64 blkno,
				    char *name,
				    struct ocfs2_dir_lookup_result *lookup)
{
	struct inode *orphan_dir_inode;
	struct buffer_head *orphan_dir_bh = NULL;
	int status = 0;

	status = FUNC6(blkno, name);
	if (status < 0) {
		FUNC2(status);
		return status;
	}

	orphan_dir_inode = FUNC7(osb,
						       ORPHAN_DIR_SYSTEM_INODE,
						       osb->slot_num);
	if (!orphan_dir_inode) {
		status = -ENOENT;
		FUNC2(status);
		return status;
	}

	FUNC4(&orphan_dir_inode->i_mutex);

	status = FUNC8(orphan_dir_inode, &orphan_dir_bh, 1);
	if (status < 0) {
		FUNC2(status);
		goto leave;
	}

	status = FUNC10(osb, orphan_dir_inode,
					      orphan_dir_bh, name,
					      OCFS2_ORPHAN_NAMELEN, lookup);
	if (status < 0) {
		FUNC9(orphan_dir_inode, 1);

		FUNC2(status);
		goto leave;
	}

	*ret_orphan_dir = orphan_dir_inode;

leave:
	if (status) {
		FUNC5(&orphan_dir_inode->i_mutex);
		FUNC1(orphan_dir_inode);
	}

	FUNC0(orphan_dir_bh);

	FUNC3(status);
	return status;
}