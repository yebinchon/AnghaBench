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
struct fuse_inode {scalar_t__ writectr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUSE_NOWRITE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct fuse_inode *fi = FUNC2(inode);

	FUNC0(fi->writectr != FUSE_NOWRITE);
	fi->writectr = 0;
	FUNC1(inode);
}