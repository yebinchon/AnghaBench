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
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_validate_dx_leaf ; 

__attribute__((used)) static int FUNC2(struct inode *dir, u64 blkno,
			      struct buffer_head **dx_leaf_bh)
{
	int ret;
	struct buffer_head *tmp = *dx_leaf_bh;

	ret = FUNC1(FUNC0(dir), blkno, &tmp,
			       ocfs2_validate_dx_leaf);

	/* If ocfs2_read_block() got us a new bh, pass it up. */
	if (!ret && !*dx_leaf_bh)
		*dx_leaf_bh = tmp;

	return ret;
}