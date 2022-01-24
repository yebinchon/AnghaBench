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
struct ocfs2_lock_res {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int UNBLOCK_CONTINUE ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*) ; 
 scalar_t__ FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 struct inode* FUNC5 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC6 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_lock_res *lockres,
				     int blocking)
{
	struct inode *inode;
	struct address_space *mapping;

       	inode = FUNC5(lockres);
	mapping = inode->i_mapping;

	if (!FUNC1(inode->i_mode))
		goto out;

	/*
	 * We need this before the filemap_fdatawrite() so that it can
	 * transfer the dirty bit from the PTE to the
	 * page. Unfortunately this means that even for EX->PR
	 * downconverts, we'll lose our mappings and have to build
	 * them up again.
	 */
	FUNC8(mapping, 0, 0, 0);

	if (FUNC3(mapping)) {
		FUNC4(ML_ERROR, "Could not sync inode %llu for downconvert!",
		     (unsigned long long)FUNC0(inode)->ip_blkno);
	}
	FUNC6(mapping);
	if (blocking == DLM_LOCK_EX) {
		FUNC7(mapping, 0);
	} else {
		/* We only need to wait on the I/O if we're not also
		 * truncating pages because truncate_inode_pages waits
		 * for us above. We don't truncate pages if we're
		 * blocking anything < EXMODE because we want to keep
		 * them around in that case. */
		FUNC2(mapping);
	}

out:
	return UNBLOCK_CONTINUE;
}