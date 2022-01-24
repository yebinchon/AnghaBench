#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* sysv_zone_t ;
struct inode {TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_8__ {int s_blocksize; } ;
struct TYPE_7__ {void* key; struct buffer_head* bh; void** p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void*) ; 
 void* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
			int num,
			int *offsets,
			Indirect *branch)
{
	int blocksize = inode->i_sb->s_blocksize;
	int n = 0;
	int i;

	branch[0].key = FUNC9(inode->i_sb);
	if (branch[0].key) for (n = 1; n < num; n++) {
		struct buffer_head *bh;
		int parent;
		/* Allocate the next block */
		branch[n].key = FUNC9(inode->i_sb);
		if (!branch[n].key)
			break;
		/*
		 * Get buffer_head for parent block, zero it out and set 
		 * the pointer to new one, then send parent to disk.
		 */
		parent = FUNC2(FUNC0(inode->i_sb), branch[n-1].key);
		bh = FUNC6(inode->i_sb, parent);
		FUNC4(bh);
		FUNC5(bh->b_data, 0, blocksize);
		branch[n].bh = bh;
		branch[n].p = (sysv_zone_t*) bh->b_data + offsets[n];
		*branch[n].p = branch[n].key;
		FUNC7(bh);
		FUNC10(bh);
		FUNC3(bh, inode);
	}
	if (n == num)
		return 0;

	/* Allocation failed, free what we already allocated */
	for (i = 1; i < n; i++)
		FUNC1(branch[i].bh);
	for (i = 0; i < n; i++)
		FUNC8(inode->i_sb, branch[i].key);
	return -ENOSPC;
}