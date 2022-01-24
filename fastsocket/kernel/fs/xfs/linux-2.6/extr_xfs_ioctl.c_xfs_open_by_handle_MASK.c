#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int oflags; } ;
typedef  TYPE_2__ xfs_fsop_handlereq_t ;
struct inode {int i_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt; } ;
struct file {int /*<<< orphan*/  f_mode; int /*<<< orphan*/  f_flags; TYPE_1__ f_path; struct inode* d_inode; } ;
struct dentry {int /*<<< orphan*/  f_mode; int /*<<< orphan*/  f_flags; TYPE_1__ f_path; struct inode* d_inode; } ;
struct cred {int dummy; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EISDIR ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FMODE_NOCMTIME ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (int) ; 
 int O_APPEND ; 
 int O_LARGEFILE ; 
 int /*<<< orphan*/  O_NOATIME ; 
 int O_TRUNC ; 
 int FUNC4 (struct file*) ; 
 int S_IFREG ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC9 () ; 
 struct file* FUNC10 (struct file*,int /*<<< orphan*/ ,int,struct cred const*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct file*) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 struct file* FUNC16 (struct file*,TYPE_2__*) ; 

int
FUNC17(
	struct file		*parfilp,
	xfs_fsop_handlereq_t	*hreq)
{
	const struct cred	*cred = FUNC9();
	int			error;
	int			fd;
	int			permflag;
	struct file		*filp;
	struct inode		*inode;
	struct dentry		*dentry;
	fmode_t			fmode;

	if (!FUNC8(CAP_SYS_ADMIN))
		return -FUNC7(EPERM);

	dentry = FUNC16(parfilp, hreq);
	if (FUNC1(dentry))
		return FUNC4(dentry);
	inode = dentry->d_inode;

	/* Restrict xfs_open_by_handle to directories & regular files. */
	if (!(FUNC6(inode->i_mode) || FUNC5(inode->i_mode))) {
		error = -FUNC7(EPERM);
		goto out_dput;
	}

#if BITS_PER_LONG != 32
	hreq->oflags |= O_LARGEFILE;
#endif

	permflag = hreq->oflags;
	fmode = FUNC3(permflag);
	if ((!(permflag & O_APPEND) || (permflag & O_TRUNC)) &&
	    (fmode & FMODE_WRITE) && FUNC0(inode)) {
		error = -FUNC7(EPERM);
		goto out_dput;
	}

	if ((fmode & FMODE_WRITE) && FUNC2(inode)) {
		error = -FUNC7(EACCES);
		goto out_dput;
	}

	/* Can't write directories. */
	if (FUNC5(inode->i_mode) && (fmode & FMODE_WRITE)) {
		error = -FUNC7(EISDIR);
		goto out_dput;
	}

	fd = FUNC13();
	if (fd < 0) {
		error = fd;
		goto out_dput;
	}

	filp = FUNC10(dentry, FUNC14(parfilp->f_path.mnt),
			   hreq->oflags, cred);
	if (FUNC1(filp)) {
		FUNC15(fd);
		return FUNC4(filp);
	}

	if (inode->i_mode & S_IFREG) {
		filp->f_flags |= O_NOATIME;
		filp->f_mode |= FMODE_NOCMTIME;
	}

	FUNC12(fd, filp);
	return fd;

 out_dput:
	FUNC11(dentry);
	return error;
}