#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ svc_client ;
struct svc_fh {int /*<<< orphan*/  fh_handle; } ;
struct svc_export {int dummy; } ;
struct path {TYPE_3__* dentry; } ;
struct knfsd_fh {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_9__ {struct inode* d_inode; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct svc_export*) ; 
 int FUNC1 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct svc_export* FUNC3 (TYPE_2__*,struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_export*) ; 
 scalar_t__ FUNC5 (struct svc_fh*,struct svc_export*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_fh*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_fh*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC9 (struct knfsd_fh*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct path*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int
FUNC12(svc_client *clp, char *name, struct knfsd_fh *f, int maxsize)
{
	struct svc_export	*exp;
	struct path		path;
	struct inode		*inode;
	struct svc_fh		fh;
	int			err;

	err = -EPERM;
	/* NB: we probably ought to check that it's NUL-terminated */
	if (FUNC8(name, 0, &path)) {
		FUNC11("nfsd: exp_rootfh path not found %s", name);
		return err;
	}
	inode = path.dentry->d_inode;

	FUNC2("nfsd: exp_rootfh(%s [%p] %s:%s/%ld)\n",
		 name, path.dentry, clp->name,
		 inode->i_sb->s_id, inode->i_ino);
	exp = FUNC3(clp, &path);
	if (FUNC0(exp)) {
		err = FUNC1(exp);
		goto out;
	}

	/*
	 * fh must be initialized before calling fh_compose
	 */
	FUNC6(&fh, maxsize);
	if (FUNC5(&fh, exp, path.dentry, NULL))
		err = -EINVAL;
	else
		err = 0;
	FUNC9(f, &fh.fh_handle, sizeof(struct knfsd_fh));
	FUNC7(&fh);
	FUNC4(exp);
out:
	FUNC10(&path);
	return err;
}