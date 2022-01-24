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
struct p9_fid {int fid; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  P9_DMLINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct p9_fid*) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 struct p9_fid* FUNC8 (struct dentry*) ; 
 int FUNC9 (struct inode*,struct dentry*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC10(struct dentry *old_dentry, struct inode *dir,
	      struct dentry *dentry)
{
	int retval;
	struct p9_fid *oldfid;
	char *name;

	FUNC1(P9_DEBUG_VFS,
		" %lu,%s,%s\n", dir->i_ino, dentry->d_name.name,
		old_dentry->d_name.name);

	oldfid = FUNC8(old_dentry);
	if (FUNC0(oldfid))
		return FUNC2(oldfid);

	name = FUNC3();
	if (FUNC7(!name)) {
		retval = -ENOMEM;
		goto clunk_fid;
	}

	FUNC6(name, "%d\n", oldfid->fid);
	retval = FUNC9(dir, dentry, P9_DMLINK, name);
	FUNC4(name);

clunk_fid:
	FUNC5(oldfid);
	return retval;
}