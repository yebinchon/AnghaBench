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
struct pohmelfs_inode {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct pohmelfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct pohmelfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, int sync)
{
	struct pohmelfs_inode *pi = FUNC0(inode);

	FUNC1(pi);
	FUNC2(inode);

	return 0;
}