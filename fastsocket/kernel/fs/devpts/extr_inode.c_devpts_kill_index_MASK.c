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
struct super_block {int dummy; } ;
struct pts_fs_info {int /*<<< orphan*/  allocated_ptys; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  allocated_ptys_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct super_block* FUNC4 (struct inode*) ; 

void FUNC5(struct inode *ptmx_inode, int idx)
{
	struct super_block *sb = FUNC4(ptmx_inode);
	struct pts_fs_info *fsi = FUNC0(sb);

	FUNC2(&allocated_ptys_lock);
	FUNC1(&fsi->allocated_ptys, idx);
	FUNC3(&allocated_ptys_lock);
}