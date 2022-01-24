#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ohandle; int /*<<< orphan*/  ohandlen; } ;
typedef  TYPE_1__ xfs_fsop_handlereq_t ;
struct file {int dummy; } ;
struct dentry {TYPE_4__* d_inode; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 scalar_t__ MAXPATHLEN ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC11 (struct file*,TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,void*) ; 

int
FUNC13(
	struct file		*parfilp,
	xfs_fsop_handlereq_t	*hreq)
{
	struct dentry		*dentry;
	__u32			olen;
	void			*link;
	int			error;

	if (!FUNC5(CAP_SYS_ADMIN))
		return -FUNC3(EPERM);

	dentry = FUNC11(parfilp, hreq);
	if (FUNC0(dentry))
		return FUNC1(dentry);

	/* Restrict this handle operation to symlinks only. */
	if (!FUNC2(dentry->d_inode->i_mode)) {
		error = -FUNC3(EINVAL);
		goto out_dput;
	}

	if (FUNC6(&olen, hreq->ohandlen, sizeof(__u32))) {
		error = -FUNC3(EFAULT);
		goto out_dput;
	}

	link = FUNC10(MAXPATHLEN+1, GFP_KERNEL);
	if (!link) {
		error = -FUNC3(ENOMEM);
		goto out_dput;
	}

	error = -FUNC12(FUNC4(dentry->d_inode), link);
	if (error)
		goto out_kfree;
	error = FUNC7(hreq->ohandle, olen, link);
	if (error)
		goto out_kfree;

 out_kfree:
	FUNC9(link);
 out_dput:
	FUNC8(dentry);
	return error;
}