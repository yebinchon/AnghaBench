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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, sector_t lblock)
{
	if (FUNC2(inode, EXT4_INODE_EXTENTS))
		return FUNC0(inode, lblock);

	return FUNC1(inode, lblock);
}