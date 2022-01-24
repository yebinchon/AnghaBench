#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v9fs_dentry {int /*<<< orphan*/  lock; int /*<<< orphan*/  fidlist; } ;
struct p9_fid {int /*<<< orphan*/  dlist; int /*<<< orphan*/  fid; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {struct v9fs_dentry* d_fsdata; TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v9fs_dentry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct dentry *dentry, struct p9_fid *fid)
{
	struct v9fs_dentry *dent;

	FUNC1(P9_DEBUG_VFS, "fid %d dentry %s\n",
					fid->fid, dentry->d_name.name);

	dent = dentry->d_fsdata;
	if (!dent) {
		dent = FUNC2(sizeof(struct v9fs_dentry), GFP_KERNEL);
		if (!dent)
			return -ENOMEM;

		FUNC5(&dent->lock);
		FUNC0(&dent->fidlist);
		dentry->d_fsdata = dent;
	}

	FUNC4(&dent->lock);
	FUNC3(&fid->dlist, &dent->fidlist);
	FUNC6(&dent->lock);

	return 0;
}