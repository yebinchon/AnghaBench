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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct inode*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static sector_t FUNC11(struct address_space *mapping, sector_t block)
{
	sector_t status;
	u64 p_blkno = 0;
	int err = 0;
	struct inode *inode = mapping->host;

	FUNC4("(block = %llu)\n", (unsigned long long)block);

	/* We don't need to lock journal system files, since they aren't
	 * accessed concurrently from multiple nodes.
	 */
	if (!FUNC0(inode)) {
		err = FUNC8(inode, NULL, 0);
		if (err) {
			if (err != -ENOENT)
				FUNC5(err);
			goto bail;
		}
		FUNC2(&FUNC1(inode)->ip_alloc_sem);
	}

	if (!(FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL))
		err = FUNC7(inode, block, &p_blkno, NULL,
						  NULL);

	if (!FUNC0(inode)) {
		FUNC10(&FUNC1(inode)->ip_alloc_sem);
		FUNC9(inode, 0);
	}

	if (err) {
		FUNC3(ML_ERROR, "get_blocks() failed, block = %llu\n",
		     (unsigned long long)block);
		FUNC5(err);
		goto bail;
	}

bail:
	status = err ? 0 : p_blkno;

	FUNC6((int)status);

	return status;
}