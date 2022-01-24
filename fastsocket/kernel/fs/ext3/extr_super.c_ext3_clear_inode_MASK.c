#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ext3_block_alloc_info {int dummy; } ;
struct TYPE_2__ {struct ext3_block_alloc_info* i_block_alloc_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext3_block_alloc_info*) ; 
 scalar_t__ FUNC3 (struct ext3_block_alloc_info*) ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	struct ext3_block_alloc_info *rsv = FUNC0(inode)->i_block_alloc_info;
	FUNC1(inode);
	FUNC0(inode)->i_block_alloc_info = NULL;
	if (FUNC3(rsv))
		FUNC2(rsv);
}