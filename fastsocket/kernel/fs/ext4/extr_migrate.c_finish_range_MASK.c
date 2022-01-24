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
struct list_blocks_struct {int /*<<< orphan*/  first_pblock; scalar_t__ first_block; scalar_t__ last_block; } ;
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_RESERVE_TRANS_BLOCKS ; 
 scalar_t__ FUNC0 (struct ext4_ext_path*) ; 
 int FUNC1 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct inode*,scalar_t__,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC6 (struct inode*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_extent*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ext4_ext_path*) ; 

__attribute__((used)) static int FUNC13(handle_t *handle, struct inode *inode,
				struct list_blocks_struct *lb)

{
	int retval = 0, needed;
	struct ext4_extent newext;
	struct ext4_ext_path *path;
	if (lb->first_pblock == 0)
		return 0;

	/* Add the extent to temp inode*/
	newext.ee_block = FUNC3(lb->first_block);
	newext.ee_len   = FUNC2(lb->last_block - lb->first_block + 1);
	FUNC8(&newext, lb->first_pblock);
	path = FUNC6(inode, lb->first_block, NULL);

	if (FUNC0(path)) {
		retval = FUNC1(path);
		path = NULL;
		goto err_out;
	}

	/*
	 * Calculate the credit needed to inserting this extent
	 * Since we are doing this in loop we may accumalate extra
	 * credit. But below we try to not accumalate too much
	 * of them by restarting the journal.
	 */
	needed = FUNC4(inode,
		    lb->last_block - lb->first_block + 1, path);

	/*
	 * Make sure the credit we accumalated is not really high
	 */
	if (needed && FUNC9(handle,
						EXT4_RESERVE_TRANS_BLOCKS)) {
		retval = FUNC11(handle, needed);
		if (retval)
			goto err_out;
	} else if (needed) {
		retval = FUNC10(handle, needed);
		if (retval) {
			/*
			 * IF not able to extend the journal restart the journal
			 */
			retval = FUNC11(handle, needed);
			if (retval)
				goto err_out;
		}
	}
	retval = FUNC7(handle, inode, path, &newext, 0);
err_out:
	if (path) {
		FUNC5(path);
		FUNC12(path);
	}
	lb->first_pblock = 0;
	return retval;
}