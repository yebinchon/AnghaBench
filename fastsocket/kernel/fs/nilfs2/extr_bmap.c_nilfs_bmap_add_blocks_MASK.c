#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct TYPE_5__ {int i_blkbits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(const struct nilfs_bmap *bmap, int n)
{
	FUNC1(bmap->b_inode, (1 << bmap->b_inode->i_blkbits) * n);
	if (FUNC0(bmap->b_inode))
		FUNC3(bmap->b_inode);
	else
		FUNC2(bmap->b_inode);
}