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
typedef  size_t u32 ;
struct gfs2_leaf {int /*<<< orphan*/  lf_depth; } ;
struct gfs2_inode {int i_depth; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct gfs2_inode*,scalar_t__,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/ * FUNC7 (struct gfs2_inode*) ; 
 int FUNC8 (struct gfs2_inode*,size_t,size_t,scalar_t__) ; 

int FUNC9(struct gfs2_inode *dip)
{
	struct buffer_head *bh;
	struct gfs2_leaf *leaf;
	u32 hsize, len;
	u32 index = 0, next_index;
	__be64 *lp;
	u64 leaf_no;
	int error = 0, last;

	hsize = 1 << dip->i_depth;

	lp = FUNC7(dip);
	if (FUNC0(lp))
		return FUNC1(lp);

	while (index < hsize) {
		leaf_no = FUNC3(lp[index]);
		if (leaf_no) {
			error = FUNC5(dip, leaf_no, &bh);
			if (error)
				goto out;
			leaf = (struct gfs2_leaf *)bh->b_data;
			len = 1 << (dip->i_depth - FUNC2(leaf->lf_depth));

			next_index = (index & ~(len - 1)) + len;
			last = ((next_index >= hsize) ? 1 : 0);
			error = FUNC8(dip, index, len, leaf_no);
			FUNC4(bh);
			if (error)
				goto out;
			index = next_index;
		} else
			index++;
	}

	if (index != hsize) {
		FUNC6(dip);
		error = -EIO;
	}

out:

	return error;
}