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
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct svc_export {int ex_flags; TYPE_1__ ex_path; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_gid; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int NFSD_MAY_EXEC ; 
 int NFSD_MAY_LOCAL_ACCESS ; 
 int NFSD_MAY_LOCK ; 
 int NFSD_MAY_NOP ; 
 int NFSD_MAY_OWNER_OVERRIDE ; 
 int NFSD_MAY_READ ; 
 int NFSD_MAY_READ_IF_EXEC ; 
 int NFSD_MAY_SATTR ; 
 int NFSD_MAY_TRUNC ; 
 int NFSD_MAY_WRITE ; 
 int NFSEXP_NOAUTHNLM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*,...) ; 
 scalar_t__ FUNC7 (struct svc_rqst*,struct svc_export*) ; 
 int FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  nfserr_perm ; 
 int /*<<< orphan*/  nfserr_rofs ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__be32
FUNC10(struct svc_rqst *rqstp, struct svc_export *exp,
					struct dentry *dentry, int acc)
{
	struct inode	*inode = dentry->d_inode;
	int		err;

	if (acc == NFSD_MAY_NOP)
		return 0;
#if 0
	dprintk("nfsd: permission 0x%x%s%s%s%s%s%s%s mode 0%o%s%s%s\n",
		acc,
		(acc & NFSD_MAY_READ)?	" read"  : "",
		(acc & NFSD_MAY_WRITE)?	" write" : "",
		(acc & NFSD_MAY_EXEC)?	" exec"  : "",
		(acc & NFSD_MAY_SATTR)?	" sattr" : "",
		(acc & NFSD_MAY_TRUNC)?	" trunc" : "",
		(acc & NFSD_MAY_LOCK)?	" lock"  : "",
		(acc & NFSD_MAY_OWNER_OVERRIDE)? " owneroverride" : "",
		inode->i_mode,
		IS_IMMUTABLE(inode)?	" immut" : "",
		IS_APPEND(inode)?	" append" : "",
		__mnt_is_readonly(exp->ex_path.mnt)?	" ro" : "");
	dprintk("      owner %d/%d user %d/%d\n",
		inode->i_uid, inode->i_gid, current_fsuid(), current_fsgid());
#endif

	/* Normally we reject any write/sattr etc access on a read-only file
	 * system.  But if it is IRIX doing check on write-access for a 
	 * device special file, we ignore rofs.
	 */
	if (!(acc & NFSD_MAY_LOCAL_ACCESS))
		if (acc & (NFSD_MAY_WRITE | NFSD_MAY_SATTR | NFSD_MAY_TRUNC)) {
			if (FUNC7(rqstp, exp) ||
			    FUNC3(exp->ex_path.mnt))
				return nfserr_rofs;
			if (/* (acc & NFSD_MAY_WRITE) && */ FUNC1(inode))
				return nfserr_perm;
		}
	if ((acc & NFSD_MAY_TRUNC) && FUNC0(inode))
		return nfserr_perm;

	if (acc & NFSD_MAY_LOCK) {
		/* If we cannot rely on authentication in NLM requests,
		 * just allow locks, otherwise require read permission, or
		 * ownership
		 */
		if (exp->ex_flags & NFSEXP_NOAUTHNLM)
			return 0;
		else
			acc = NFSD_MAY_READ | NFSD_MAY_OWNER_OVERRIDE;
	}
	/*
	 * The file owner always gets access permission for accesses that
	 * would normally be checked at open time. This is to make
	 * file access work even when the client has done a fchmod(fd, 0).
	 *
	 * However, `cp foo bar' should fail nevertheless when bar is
	 * readonly. A sensible way to do this might be to reject all
	 * attempts to truncate a read-only file, because a creat() call
	 * always implies file truncation.
	 * ... but this isn't really fair.  A process may reasonably call
	 * ftruncate on an open file descriptor on a file with perm 000.
	 * We must trust the client to do permission checking - using "ACCESS"
	 * with NFSv3.
	 */
	if ((acc & NFSD_MAY_OWNER_OVERRIDE) &&
	    inode->i_uid == FUNC5())
		return 0;

	/* This assumes  NFSD_MAY_{READ,WRITE,EXEC} == MAY_{READ,WRITE,EXEC} */
	err = FUNC8(inode, acc & (MAY_READ|MAY_WRITE|MAY_EXEC));

	/* Allow read access to binaries even when mode 111 */
	if (err == -EACCES && FUNC2(inode->i_mode) &&
	     (acc == (NFSD_MAY_READ | NFSD_MAY_OWNER_OVERRIDE) ||
	      acc == (NFSD_MAY_READ | NFSD_MAY_READ_IF_EXEC)))
		err = FUNC8(inode, MAY_EXEC);

	return err? FUNC9(err) : 0;
}