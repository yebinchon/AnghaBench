#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct TYPE_5__ {struct file* file; } ;
struct TYPE_6__ {TYPE_1__ open; } ;
struct nameidata {TYPE_4__ path; TYPE_2__ intent; } ;
struct TYPE_7__ {int /*<<< orphan*/ * dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 struct file* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ *,struct cred const*) ; 
 struct cred* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

struct file *FUNC3(struct nameidata *nd)
{
	const struct cred *cred = FUNC1();
	struct file *filp;

	/* Pick up the filp from the open intent */
	filp = nd->intent.open.file;
	/* Has the filesystem initialised the file for us? */
	if (filp->f_path.dentry == NULL)
		filp = FUNC0(nd->path.dentry, nd->path.mnt, filp,
				     NULL, cred);
	else
		FUNC2(&nd->path);
	return filp;
}