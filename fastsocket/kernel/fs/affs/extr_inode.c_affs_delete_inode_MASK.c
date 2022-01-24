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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; scalar_t__ i_size; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(struct inode *inode)
{
	FUNC3("AFFS: delete_inode(ino=%lu, nlink=%u)\n", inode->i_ino, inode->i_nlink);
	FUNC4(&inode->i_data, 0);
	inode->i_size = 0;
	FUNC1(inode);
	FUNC2(inode);
	FUNC0(inode->i_sb, inode->i_ino);
}