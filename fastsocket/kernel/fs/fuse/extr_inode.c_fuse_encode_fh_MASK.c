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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct inode {scalar_t__ i_generation; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
struct TYPE_4__ {int nodeid; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry, u32 *fh, int *max_len,
			   int connectable)
{
	struct inode *inode = dentry->d_inode;
	bool encode_parent = connectable && !FUNC0(inode->i_mode);
	int len = encode_parent ? 6 : 3;
	u64 nodeid;
	u32 generation;

	if (*max_len < len)
		return  255;

	nodeid = FUNC1(inode)->nodeid;
	generation = inode->i_generation;

	fh[0] = (u32)(nodeid >> 32);
	fh[1] = (u32)(nodeid & 0xffffffff);
	fh[2] = generation;

	if (encode_parent) {
		struct inode *parent;

		FUNC2(&dentry->d_lock);
		parent = dentry->d_parent->d_inode;
		nodeid = FUNC1(parent)->nodeid;
		generation = parent->i_generation;
		FUNC3(&dentry->d_lock);

		fh[3] = (u32)(nodeid >> 32);
		fh[4] = (u32)(nodeid & 0xffffffff);
		fh[5] = generation;
	}

	*max_len = len;
	return encode_parent ? 0x82 : 0x81;
}