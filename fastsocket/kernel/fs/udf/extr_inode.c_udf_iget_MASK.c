#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct kernel_lb_addr {scalar_t__ logicalBlockNum; size_t partitionReferenceNum; } ;
struct inode {int i_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_location; } ;
struct TYPE_5__ {TYPE_1__* s_partmaps; } ;
struct TYPE_4__ {scalar_t__ s_partition_len; } ;

/* Variables and functions */
 int I_NEW ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct kernel_lb_addr*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,size_t) ; 
 unsigned long FUNC9 (struct super_block*,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

struct inode *FUNC11(struct super_block *sb, struct kernel_lb_addr *ino)
{
	unsigned long block = FUNC9(sb, ino, 0);
	struct inode *inode = FUNC3(sb, block);

	if (!inode)
		return NULL;

	if (inode->i_state & I_NEW) {
		FUNC7(&FUNC0(inode)->i_location, ino, sizeof(struct kernel_lb_addr));
		FUNC2(inode);
		FUNC10(inode);
	}

	if (FUNC5(inode))
		goto out_iput;

	if (ino->logicalBlockNum >= FUNC1(sb)->
			s_partmaps[ino->partitionReferenceNum].s_partition_len) {
		FUNC8("block=%d, partition=%d out of range\n",
			  ino->logicalBlockNum, ino->partitionReferenceNum);
		FUNC6(inode);
		goto out_iput;
	}

	return inode;

 out_iput:
	FUNC4(inode);
	return NULL;
}