#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct dentry* dentry; } ;
struct svc_export {int ex_flags; TYPE_2__ ex_path; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int NFSEXP_NOSUBTREECHECK ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *expv, struct dentry *dentry)
{
	struct svc_export *exp = expv;
	int rv;
	struct dentry *tdentry;
	struct dentry *parent;

	if (exp->ex_flags & NFSEXP_NOSUBTREECHECK)
		return 1;

	tdentry = FUNC1(dentry);
	while (tdentry != exp->ex_path.dentry && !FUNC0(tdentry)) {
		/* make sure parents give x permission to user */
		int err;
		parent = FUNC2(tdentry);
		err = FUNC5(parent->d_inode, MAY_EXEC);
		if (err < 0) {
			FUNC4(parent);
			break;
		}
		FUNC4(tdentry);
		tdentry = parent;
	}
	if (tdentry != exp->ex_path.dentry)
		FUNC3("nfsd_acceptable failed at %p %s\n", tdentry, tdentry->d_name.name);
	rv = (tdentry == exp->ex_path.dentry);
	FUNC4(tdentry);
	return rv;
}