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
typedef  int u32 ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_depth; int /*<<< orphan*/ * i_hash_cache; } ;
struct file_ra_state {scalar_t__ start; } ;
typedef  int /*<<< orphan*/  filldir_t ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct gfs2_inode*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int,int,struct file_ra_state*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, u64 *offset, void *opaque,
		      filldir_t filldir, struct file_ra_state *f_ra)
{
	struct gfs2_inode *dip = FUNC0(inode);
	u32 hsize, len = 0;
	u32 hash, index;
	__be64 *lp;
	int copied = 0;
	int error = 0;
	unsigned depth = 0;

	hsize = 1 << dip->i_depth;
	hash = FUNC5(*offset);
	index = hash >> (32 - dip->i_depth);

	if (f_ra && dip->i_hash_cache == NULL)
		f_ra->start = 0;
	lp = FUNC4(dip);
	if (FUNC1(lp))
		return FUNC2(lp);

	FUNC7(inode, hsize, index, f_ra);

	while (index < hsize) {
		error = FUNC6(inode, offset, opaque, filldir,
					   &copied, &depth,
					   FUNC3(lp[index]));
		if (error)
			break;

		len = 1 << (dip->i_depth - depth);
		index = (index & ~(len - 1)) + len;
	}

	if (error > 0)
		error = 0;
	return error;
}