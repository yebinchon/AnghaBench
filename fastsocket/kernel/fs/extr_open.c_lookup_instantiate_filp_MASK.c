#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct file* file; } ;
struct TYPE_5__ {TYPE_3__ open; } ;
struct TYPE_4__ {int /*<<< orphan*/  mnt; } ;
struct nameidata {TYPE_2__ intent; TYPE_1__ path; } ;
struct file {int dummy; } ;
typedef  struct file dentry ;
struct cred {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 struct file* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*,int (*) (struct inode*,struct file*),struct cred const*) ; 
 struct cred* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*) ; 

struct file *FUNC6(struct nameidata *nd, struct dentry *dentry,
		int (*open)(struct inode *, struct file *))
{
	const struct cred *cred = FUNC2();

	if (FUNC0(nd->intent.open.file))
		goto out;
	if (FUNC0(dentry))
		goto out_err;
	nd->intent.open.file = FUNC1(FUNC3(dentry), FUNC4(nd->path.mnt),
					     nd->intent.open.file,
					     open, cred);
out:
	return nd->intent.open.file;
out_err:
	FUNC5(nd);
	nd->intent.open.file = (struct file *)dentry;
	goto out;
}