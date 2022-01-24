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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {scalar_t__ s_want_extra_isize; TYPE_1__* s_es; } ;
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ i_extra_isize; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_mnt_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 struct ext4_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_NO_EXPAND ; 
 int FUNC3 (struct inode*,scalar_t__,struct ext4_iloc,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(handle_t *handle, struct inode *inode)
{
	struct ext4_iloc iloc;
	struct ext4_sb_info *sbi = FUNC2(inode->i_sb);
	static unsigned int mnt_count;
	int err, ret;

	FUNC12();
	err = FUNC6(handle, inode, &iloc);
	if (FUNC4(handle) &&
	    FUNC1(inode)->i_extra_isize < sbi->s_want_extra_isize &&
	    !FUNC8(inode, EXT4_STATE_NO_EXPAND)) {
		/*
		 * We need extra buffer credits since we may write into EA block
		 * with this same handle. If journal_extend fails, then it will
		 * only result in a minor loss of functionality for that inode.
		 * If this is felt to be critical, then e2fsck should be run to
		 * force a large enough s_min_extra_isize.
		 */
		if ((FUNC10(handle,
			     FUNC0(inode->i_sb))) == 0) {
			ret = FUNC3(inode,
						      sbi->s_want_extra_isize,
						      iloc, handle);
			if (ret) {
				FUNC7(inode,
						     EXT4_STATE_NO_EXPAND);
				if (mnt_count !=
					FUNC11(sbi->s_es->s_mnt_count)) {
					FUNC9(inode->i_sb,
					"Unable to expand inode %lu. Delete"
					" some EAs or run e2fsck.",
					inode->i_ino);
					mnt_count =
					  FUNC11(sbi->s_es->s_mnt_count);
				}
			}
		}
	}
	if (!err)
		err = FUNC5(handle, inode, &iloc);
	return err;
}