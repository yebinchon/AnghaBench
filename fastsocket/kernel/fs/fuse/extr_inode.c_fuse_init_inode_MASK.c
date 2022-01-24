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
struct inode {int i_mode; int /*<<< orphan*/  i_size; } ;
struct fuse_attr {int mode; int /*<<< orphan*/  rdev; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int S_IFMT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct inode *inode, struct fuse_attr *attr)
{
	inode->i_mode = attr->mode & S_IFMT;
	inode->i_size = attr->size;
	if (FUNC6(inode->i_mode)) {
		FUNC8(inode);
		FUNC10(inode);
	} else if (FUNC3(inode->i_mode))
		FUNC9(inode);
	else if (FUNC5(inode->i_mode))
		FUNC11(inode);
	else if (FUNC2(inode->i_mode) || FUNC1(inode->i_mode) ||
		 FUNC4(inode->i_mode) || FUNC7(inode->i_mode)) {
		FUNC8(inode);
		FUNC12(inode, inode->i_mode,
				   FUNC13(attr->rdev));
	} else
		FUNC0();
}