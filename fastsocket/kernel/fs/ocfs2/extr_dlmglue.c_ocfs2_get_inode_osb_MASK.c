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
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct ocfs2_lock_res*) ; 

__attribute__((used)) static struct ocfs2_super *FUNC2(struct ocfs2_lock_res *lockres)
{
	struct inode *inode = FUNC1(lockres);

	return FUNC0(inode->i_sb);
}