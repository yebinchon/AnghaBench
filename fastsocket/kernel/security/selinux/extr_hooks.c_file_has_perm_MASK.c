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
typedef  scalar_t__ u32 ;
struct inode {int dummy; } ;
struct file_security_struct {scalar_t__ sid; } ;
struct TYPE_7__ {TYPE_4__* dentry; } ;
struct file {TYPE_3__ f_path; struct file_security_struct* f_security; } ;
struct cred {int dummy; } ;
struct TYPE_5__ {TYPE_3__ path; } ;
struct TYPE_6__ {TYPE_1__ fs; } ;
struct common_audit_data {TYPE_2__ u; } ;
struct TYPE_8__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FD__USE ; 
 int /*<<< orphan*/  FS ; 
 int /*<<< orphan*/  SECCLASS_FD ; 
 int FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 scalar_t__ FUNC2 (struct cred const*) ; 
 int FUNC3 (struct cred const*,struct inode*,scalar_t__,struct common_audit_data*) ; 

__attribute__((used)) static int FUNC4(const struct cred *cred,
			 struct file *file,
			 u32 av)
{
	struct file_security_struct *fsec = file->f_security;
	struct inode *inode = file->f_path.dentry->d_inode;
	struct common_audit_data ad;
	u32 sid = FUNC2(cred);
	int rc;

	FUNC0(&ad, FS);
	ad.u.fs.path = file->f_path;

	if (sid != fsec->sid) {
		rc = FUNC1(sid, fsec->sid,
				  SECCLASS_FD,
				  FD__USE,
				  &ad);
		if (rc)
			goto out;
	}

	/* av is zero if only checking access to the descriptor. */
	rc = 0;
	if (av)
		rc = FUNC3(cred, inode, av, &ad);

out:
	return rc;
}