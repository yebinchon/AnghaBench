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
struct v9fs_cookie {int /*<<< orphan*/  lock; int /*<<< orphan*/  fscache; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct p9_fid* private_data; } ;

/* Variables and functions */
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct v9fs_cookie* FUNC4 (struct inode*) ; 

void FUNC5(struct inode *inode, struct file *filp)
{
	struct v9fs_cookie *vcookie = FUNC4(inode);
	struct p9_fid *fid;

	if (!vcookie->fscache)
		return;

	FUNC0(&vcookie->lock);
	fid = filp->private_data;
	if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
		FUNC2(inode);
	else
		FUNC3(inode);

	FUNC1(&vcookie->lock);
}