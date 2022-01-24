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
struct ocfs2_super {int dummy; } ;
struct ocfs2_cached_block_free {struct ocfs2_cached_block_free* free_next; int /*<<< orphan*/  free_bit; scalar_t__ free_blk; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_SUBALLOC_FREE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_cached_block_free*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC12 (struct ocfs2_super*,int,int) ; 
 int FUNC13 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 int /*<<< orphan*/ * FUNC15 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct ocfs2_super *osb,
				    int sysfile_type,
				    int slot,
				    struct ocfs2_cached_block_free *head)
{
	int ret;
	u64 bg_blkno;
	handle_t *handle;
	struct inode *inode;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_cached_block_free *tmp;

	inode = FUNC12(osb, sysfile_type, slot);
	if (!inode) {
		ret = -EINVAL;
		FUNC6(ret);
		goto out;
	}

	FUNC7(&inode->i_mutex);

	ret = FUNC13(inode, &di_bh, 1);
	if (ret) {
		FUNC6(ret);
		goto out_mutex;
	}

	handle = FUNC15(osb, OCFS2_SUBALLOC_FREE);
	if (FUNC0(handle)) {
		ret = FUNC1(handle);
		FUNC6(ret);
		goto out_unlock;
	}

	while (head) {
		bg_blkno = FUNC16(head->free_blk,
						      head->free_bit);
		FUNC5(0, "Free bit: (bit %u, blkno %llu)\n",
		     head->free_bit, (unsigned long long)head->free_blk);

		ret = FUNC11(handle, inode, di_bh,
					       head->free_bit, bg_blkno, 1);
		if (ret) {
			FUNC6(ret);
			goto out_journal;
		}

		ret = FUNC10(handle, OCFS2_SUBALLOC_FREE);
		if (ret) {
			FUNC6(ret);
			goto out_journal;
		}

		tmp = head;
		head = head->free_next;
		FUNC4(tmp);
	}

out_journal:
	FUNC9(osb, handle);

out_unlock:
	FUNC14(inode, 1);
	FUNC2(di_bh);
out_mutex:
	FUNC8(&inode->i_mutex);
	FUNC3(inode);
out:
	while(head) {
		/* Premature exit may have left some dangling items. */
		tmp = head;
		head = head->free_next;
		FUNC4(tmp);
	}

	return ret;
}