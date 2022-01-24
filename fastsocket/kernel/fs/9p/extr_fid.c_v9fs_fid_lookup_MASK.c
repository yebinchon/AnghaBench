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
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {int flags; char* uname; int /*<<< orphan*/  aname; int /*<<< orphan*/  clnt; int /*<<< orphan*/  uid; } ;
struct p9_fid {int dummy; } ;
struct TYPE_2__ {scalar_t__ name; } ;
struct dentry {TYPE_1__ d_name; struct dentry* d_parent; int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPERM ; 
 struct p9_fid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  P9_MAXWELEM ; 
#define  V9FS_ACCESS_ANY 130 
 int V9FS_ACCESS_MASK ; 
#define  V9FS_ACCESS_SINGLE 129 
#define  V9FS_ACCESS_USER 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char** FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC8 (struct p9_fid*,int,char**,int) ; 
 scalar_t__ FUNC9 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct p9_fid*) ; 
 struct p9_fid* FUNC11 (struct dentry*,int /*<<< orphan*/ ,int) ; 
 struct v9fs_session_info* FUNC12 (int /*<<< orphan*/ ) ; 

struct p9_fid *FUNC13(struct dentry *dentry)
{
	int i, n, l, clone, any, access;
	u32 uid;
	struct p9_fid *fid;
	struct dentry *d, *ds;
	struct v9fs_session_info *v9ses;
	char **wnames, *uname;

	v9ses = FUNC12(dentry->d_inode);
	access = v9ses->flags & V9FS_ACCESS_MASK;
	switch (access) {
	case V9FS_ACCESS_SINGLE:
	case V9FS_ACCESS_USER:
		uid = FUNC3();
		any = 0;
		break;

	case V9FS_ACCESS_ANY:
		uid = v9ses->uid;
		any = 1;
		break;

	default:
		uid = ~0;
		any = 0;
		break;
	}

	fid = FUNC11(dentry, uid, any);
	if (fid)
		return fid;

	ds = dentry->d_parent;
	fid = FUNC11(ds, uid, any);
	if (!fid) { /* walk from the root */
		n = 0;
		for (ds = dentry; !FUNC2(ds); ds = ds->d_parent)
			n++;

		fid = FUNC11(ds, uid, any);
		if (!fid) { /* the user is not attached to the fs yet */
			if (access == V9FS_ACCESS_SINGLE)
				return FUNC0(-EPERM);

			if (FUNC9(v9ses))
				uname = NULL;
			else
				uname = v9ses->uname;

			fid = FUNC7(v9ses->clnt, NULL, uname, uid,
				v9ses->aname);

			if (FUNC1(fid))
				return fid;

			FUNC10(ds, fid);
		}
	} else /* walk from the parent */
		n = 1;

	if (ds == dentry)
		return fid;

	wnames = FUNC5(sizeof(char *) * n, GFP_KERNEL);
	if (!wnames)
		return FUNC0(-ENOMEM);

	for (d = dentry, i = (n-1); i >= 0; i--, d = d->d_parent)
		wnames[i] = (char *) d->d_name.name;

	clone = 1;
	i = 0;
	while (i < n) {
		l = FUNC6(n - i, P9_MAXWELEM);
		fid = FUNC8(fid, l, &wnames[i], clone);
		if (FUNC1(fid)) {
			FUNC4(wnames);
			return fid;
		}

		i += l;
		clone = 0;
	}

	FUNC4(wnames);
	FUNC10(dentry, fid);
	return fid;
}