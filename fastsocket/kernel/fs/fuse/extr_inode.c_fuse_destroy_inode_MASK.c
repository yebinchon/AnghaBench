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
struct fuse_inode {scalar_t__ forget_req; int /*<<< orphan*/  queued_writes; int /*<<< orphan*/  write_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fuse_inode_cachep ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct fuse_inode *fi = FUNC2(inode);
	FUNC0(!FUNC4(&fi->write_files));
	FUNC0(!FUNC4(&fi->queued_writes));
	if (fi->forget_req)
		FUNC1(fi->forget_req);
	FUNC3(fuse_inode_cachep, inode);
}