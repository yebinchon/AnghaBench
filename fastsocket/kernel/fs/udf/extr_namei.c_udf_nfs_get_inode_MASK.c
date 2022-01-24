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
typedef  int /*<<< orphan*/  u16 ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int /*<<< orphan*/  partitionReferenceNum; scalar_t__ logicalBlockNum; } ;
struct inode {scalar_t__ i_generation; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 struct dentry* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,struct kernel_lb_addr*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct super_block *sb, u32 block,
					u16 partref, __u32 generation)
{
	struct inode *inode;
	struct kernel_lb_addr loc;

	if (block == 0)
		return FUNC0(-ESTALE);

	loc.logicalBlockNum = block;
	loc.partitionReferenceNum = partref;
	inode = FUNC3(sb, &loc);

	if (inode == NULL)
		return FUNC0(-ENOMEM);

	if (generation && inode->i_generation != generation) {
		FUNC2(inode);
		return FUNC0(-ESTALE);
	}
	return FUNC1(inode);
}