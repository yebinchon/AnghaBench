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
struct svc_fh {int dummy; } ;
struct svc_export {int dummy; } ;
struct TYPE_2__ {struct svc_export* fh_export; struct dentry* fh_dentry; } ;
struct nfsd3_readdirres {TYPE_1__ fh; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int FUNC5 (struct svc_fh*,struct svc_export*,struct dentry*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 struct dentry* FUNC7 (char const*,struct dentry*,int) ; 

__attribute__((used)) static int
FUNC8(struct nfsd3_readdirres *cd, struct svc_fh *fhp,
		const char *name, int namlen)
{
	struct svc_export	*exp;
	struct dentry		*dparent, *dchild;
	int rv = 0;

	dparent = cd->fh.fh_dentry;
	exp  = cd->fh.fh_export;

	if (FUNC6(name, namlen)) {
		if (namlen == 2) {
			dchild = FUNC3(dparent);
			if (dchild == dparent) {
				/* filesystem root - cannot return filehandle for ".." */
				FUNC4(dchild);
				return -ENOENT;
			}
		} else
			dchild = FUNC2(dparent);
	} else
		dchild = FUNC7(name, dparent, namlen);
	if (FUNC0(dchild))
		return -ENOENT;
	rv = -ENOENT;
	if (FUNC1(dchild))
		goto out;
	rv = FUNC5(fhp, exp, dchild, &cd->fh);
	if (rv)
		goto out;
	if (!dchild->d_inode)
		goto out;
	rv = 0;
out:
	FUNC4(dchild);
	return rv;
}