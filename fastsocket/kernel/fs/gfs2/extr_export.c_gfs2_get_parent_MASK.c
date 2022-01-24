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
struct dentry {int /*<<< orphan*/ * d_op; int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_dops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  gfs2_qdotdot ; 

__attribute__((used)) static struct dentry *FUNC3(struct dentry *child)
{
	struct dentry *dentry;

	dentry = FUNC1(FUNC2(child->d_inode, &gfs2_qdotdot, 1));
	if (!FUNC0(dentry))
		dentry->d_op = &gfs2_dops;
	return dentry;
}