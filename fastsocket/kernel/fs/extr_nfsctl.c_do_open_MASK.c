#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int /*<<< orphan*/  mnt_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct nameidata {TYPE_1__ path; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct file* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vfsmount*) ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct file* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct vfsmount*,char*,int /*<<< orphan*/ ,struct nameidata*) ; 

__attribute__((used)) static struct file *FUNC9(char *name, int flags)
{
	struct nameidata nd;
	struct vfsmount *mnt;
	int error;

	mnt = FUNC4("nfsd", 0, "nfsd", NULL);
	if (FUNC1(mnt))
		return (struct file *)mnt;

	error = FUNC8(mnt->mnt_root, mnt, name, 0, &nd);
	FUNC6(mnt);	/* drop do_kern_mount reference */
	if (error)
		return FUNC0(error);

	if (flags == O_RDWR)
		error = FUNC5(&nd.path, MAY_READ|MAY_WRITE, flags);
	else
		error = FUNC5(&nd.path, MAY_WRITE, flags);

	if (!error)
		return FUNC3(nd.path.dentry, nd.path.mnt, flags,
				   FUNC2());

	FUNC7(&nd.path);
	return FUNC0(error);
}