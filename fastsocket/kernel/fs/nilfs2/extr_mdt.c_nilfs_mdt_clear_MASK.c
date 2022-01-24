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
struct nilfs_inode_info {int /*<<< orphan*/  i_btnode_cache; int /*<<< orphan*/  i_bmap; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct inode *inode)
{
	struct nilfs_inode_info *ii = FUNC0(inode);

	FUNC1(inode->i_mapping, 0, -1);
	FUNC4(inode->i_mapping, 0);

	FUNC2(ii->i_bmap);
	FUNC3(&ii->i_btnode_cache);
}