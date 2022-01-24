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
typedef  scalar_t__ u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext3_fsblk_t ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct inode*,struct buffer_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct inode*) ; 

__attribute__((used)) static void FUNC10(handle_t *handle, struct inode *inode,
		struct buffer_head *bh, ext3_fsblk_t block_to_free,
		unsigned long count, __le32 *first, __le32 *last)
{
	__le32 *p;
	if (FUNC9(handle, inode)) {
		if (bh) {
			FUNC0(bh, "call ext3_journal_dirty_metadata");
			FUNC3(handle, bh);
		}
		FUNC5(handle, inode);
		FUNC8(handle, inode);
		if (bh) {
			FUNC0(bh, "retaking write access");
			FUNC4(handle, bh);
		}
	}

	/*
	 * Any buffers which are on the journal will be in memory. We find
	 * them on the hash table so journal_revoke() will run journal_forget()
	 * on them.  We've already detached each block from the file, so
	 * bforget() in journal_forget() should be safe.
	 *
	 * AKPM: turn on bforget in journal_forget()!!!
	 */
	for (p = first; p < last; p++) {
		u32 nr = FUNC6(*p);
		if (nr) {
			struct buffer_head *bh;

			*p = 0;
			bh = FUNC7(inode->i_sb, nr);
			FUNC1(handle, 0, inode, bh, nr);
		}
	}

	FUNC2(handle, inode, block_to_free, count);
}