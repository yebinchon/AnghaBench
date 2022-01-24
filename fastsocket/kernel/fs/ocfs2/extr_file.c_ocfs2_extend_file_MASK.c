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
typedef  scalar_t__ u64 ;
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct inode*,struct buffer_head*) ; 
 int FUNC7 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct inode*,struct buffer_head*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct buffer_head*,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
			     struct buffer_head *di_bh,
			     u64 new_i_size)
{
	int ret = 0;
	struct ocfs2_inode_info *oi = FUNC1(inode);

	FUNC0(!di_bh);

	/* setattr sometimes calls us like this. */
	if (new_i_size == 0)
		goto out;

	if (FUNC4(inode) == new_i_size)
  		goto out;
	FUNC0(new_i_size < FUNC4(inode));

	/*
	 * Fall through for converting inline data, even if the fs
	 * supports sparse files.
	 *
	 * The check for inline data here is legal - nobody can add
	 * the feature since we have i_mutex. We must check it again
	 * after acquiring ip_alloc_sem though, as paths like mmap
	 * might have raced us to converting the inode to extents.
	 */
	if (!(oi->ip_dyn_features & OCFS2_INLINE_DATA_FL)
	    && FUNC10(FUNC2(inode->i_sb)))
		goto out_update_size;

	/*
	 * The alloc sem blocks people in read/write from reading our
	 * allocation until we're done changing it. We depend on
	 * i_mutex to block other extend/truncate calls while we're
	 * here.
	 */
	FUNC3(&oi->ip_alloc_sem);

	if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		/*
		 * We can optimize small extends by keeping the inodes
		 * inline data.
		 */
		if (FUNC9(di_bh, new_i_size)) {
			FUNC11(&oi->ip_alloc_sem);
			goto out_update_size;
		}

		ret = FUNC6(inode, di_bh);
		if (ret) {
			FUNC11(&oi->ip_alloc_sem);

			FUNC5(ret);
			goto out;
		}
	}

	if (!FUNC10(FUNC2(inode->i_sb)))
		ret = FUNC7(inode, new_i_size, new_i_size);

	FUNC11(&oi->ip_alloc_sem);

	if (ret < 0) {
		FUNC5(ret);
		goto out;
	}

out_update_size:
	ret = FUNC8(inode, di_bh, new_i_size);
	if (ret < 0)
		FUNC5(ret);

out:
	return ret;
}