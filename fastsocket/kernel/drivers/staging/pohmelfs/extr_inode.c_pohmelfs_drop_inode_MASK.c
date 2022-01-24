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
struct pohmelfs_sb {int /*<<< orphan*/  ino_lock; } ;
struct pohmelfs_inode {int /*<<< orphan*/  inode_entry; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct pohmelfs_inode* FUNC0 (struct inode*) ; 
 struct pohmelfs_sb* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inode *inode)
{
	struct pohmelfs_sb *psb = FUNC1(inode->i_sb);
	struct pohmelfs_inode *pi = FUNC0(inode);

	FUNC4(&psb->ino_lock);
	FUNC3(&pi->inode_entry);
	FUNC5(&psb->ino_lock);

	FUNC2(inode);
}