#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int rq_vers; } ;
struct knfsd_fh {int fh_size; int fh_version; scalar_t__ fh_auth_type; scalar_t__ fh_fsid_type; scalar_t__ ofh_dirino; int fh_fileid_type; int /*<<< orphan*/  ofh_generation; int /*<<< orphan*/  ofh_ino; int /*<<< orphan*/  ofh_xino; int /*<<< orphan*/  ofh_xdev; int /*<<< orphan*/ * fh_auth; int /*<<< orphan*/ * fh_fsid; } ;
struct svc_fh {struct svc_export* fh_export; struct svc_export* fh_dentry; struct knfsd_fh fh_handle; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct svc_export {int ex_flags; int d_flags; TYPE_6__ d_name; TYPE_5__* d_parent; TYPE_3__* d_inode; TYPE_2__ ex_path; } ;
struct TYPE_7__ {scalar_t__ parent_ino; int /*<<< orphan*/  gen; int /*<<< orphan*/  ino; } ;
struct fid {TYPE_1__ i32; } ;
struct dentry {int ex_flags; int d_flags; TYPE_6__ d_name; TYPE_5__* d_parent; TYPE_3__* d_inode; TYPE_2__ ex_path; } ;
struct cred {int /*<<< orphan*/  cap_permitted; int /*<<< orphan*/  cap_effective; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __be32 ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {TYPE_4__ d_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FILEID_INO32_GEN ; 
 int FILEID_INO32_GEN_PARENT ; 
 int FILEID_ROOT ; 
 scalar_t__ FSID_DEV ; 
 scalar_t__ FSID_ENCODE_DEV ; 
 scalar_t__ FSID_MAJOR_MINOR ; 
 scalar_t__ FUNC0 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NFSEXP_NOSUBTREECHECK ; 
 int NFS_FHSIZE ; 
 int /*<<< orphan*/  FUNC2 (struct svc_export*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct svc_export* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_export*) ; 
 struct svc_export* FUNC7 (int /*<<< orphan*/ ,struct fid*,int,int,int /*<<< orphan*/ ,struct svc_export*) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_acceptable ; 
 scalar_t__ FUNC11 (struct svc_rqst*,struct svc_export*) ; 
 scalar_t__ nfserr_badhandle ; 
 scalar_t__ nfserr_nofilehandle ; 
 scalar_t__ nfserr_stale ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC15 (struct cred*) ; 
 struct cred* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cred*) ; 
 struct svc_export* FUNC19 (struct svc_rqst*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC21(struct svc_rqst *rqstp, struct svc_fh *fhp)
{
	struct knfsd_fh	*fh = &fhp->fh_handle;
	struct fid *fid = NULL, sfid;
	struct svc_export *exp;
	struct dentry *dentry;
	int fileid_type;
	int data_left = fh->fh_size/4;
	__be32 error;

	error = nfserr_stale;
	if (rqstp->rq_vers > 2)
		error = nfserr_badhandle;
	if (rqstp->rq_vers == 4 && fh->fh_size == 0)
		return nfserr_nofilehandle;

	if (fh->fh_version == 1) {
		int len;

		if (--data_left < 0)
			return error;
		if (fh->fh_auth_type != 0)
			return error;
		len = FUNC8(fh->fh_fsid_type) / 4;
		if (len == 0)
			return error;
		if  (fh->fh_fsid_type == FSID_MAJOR_MINOR) {
			/* deprecated, convert to type 3 */
			len = FUNC8(FSID_ENCODE_DEV)/4;
			fh->fh_fsid_type = FSID_ENCODE_DEV;
			fh->fh_fsid[0] = FUNC10(FUNC1(FUNC13(fh->fh_fsid[0]), FUNC13(fh->fh_fsid[1])));
			fh->fh_fsid[1] = fh->fh_fsid[2];
		}
		data_left -= len;
		if (data_left < 0)
			return error;
		exp = FUNC19(rqstp, fh->fh_fsid_type, fh->fh_auth);
		fid = (struct fid *)(fh->fh_auth + len);
	} else {
		__u32 tfh[2];
		dev_t xdev;
		ino_t xino;

		if (fh->fh_size != NFS_FHSIZE)
			return error;
		/* assume old filehandle format */
		xdev = FUNC14(fh->ofh_xdev);
		xino = FUNC20(fh->ofh_xino);
		FUNC9(FSID_DEV, tfh, xdev, xino, 0, NULL);
		exp = FUNC19(rqstp, FSID_DEV, tfh);
	}

	error = nfserr_stale;
	if (FUNC2(exp) == -ENOENT)
		return error;

	if (FUNC0(exp))
		return FUNC12(FUNC2(exp));

	if (exp->ex_flags & NFSEXP_NOSUBTREECHECK) {
		/* Elevate privileges so that the lack of 'r' or 'x'
		 * permission on some parent directory will
		 * not stop exportfs_decode_fh from being able
		 * to reconnect a directory into the dentry cache.
		 * The same problem can affect "SUBTREECHECK" exports,
		 * but as nfsd_acceptable depends on correct
		 * access control settings being in effect, we cannot
		 * fix that case easily.
		 */
		struct cred *new = FUNC16();
		if (!new)
			return FUNC12(-ENOMEM);
		new->cap_effective =
			FUNC4(new->cap_effective,
					   new->cap_permitted);
		FUNC18(FUNC15(new));
		FUNC18(new);
	} else {
		error = FUNC11(rqstp, exp);
		if (error)
			goto out;
	}

	/*
	 * Look up the dentry using the NFS file handle.
	 */
	error = nfserr_stale;
	if (rqstp->rq_vers > 2)
		error = nfserr_badhandle;

	if (fh->fh_version != 1) {
		sfid.i32.ino = fh->ofh_ino;
		sfid.i32.gen = fh->ofh_generation;
		sfid.i32.parent_ino = fh->ofh_dirino;
		fid = &sfid;
		data_left = 3;
		if (fh->ofh_dirino == 0)
			fileid_type = FILEID_INO32_GEN;
		else
			fileid_type = FILEID_INO32_GEN_PARENT;
	} else
		fileid_type = fh->fh_fileid_type;

	if (fileid_type == FILEID_ROOT)
		dentry = FUNC5(exp->ex_path.dentry);
	else {
		dentry = FUNC7(exp->ex_path.mnt, fid,
				data_left, fileid_type,
				nfsd_acceptable, exp);
	}
	if (dentry == NULL)
		goto out;
	if (FUNC0(dentry)) {
		if (FUNC2(dentry) != -EINVAL)
			error = FUNC12(FUNC2(dentry));
		goto out;
	}

	if (FUNC3(dentry->d_inode->i_mode) &&
			(dentry->d_flags & DCACHE_DISCONNECTED)) {
		FUNC17("nfsd: find_fh_dentry returned a DISCONNECTED directory: %s/%s\n",
				dentry->d_parent->d_name.name, dentry->d_name.name);
	}

	fhp->fh_dentry = dentry;
	fhp->fh_export = exp;
	return 0;
out:
	FUNC6(exp);
	return error;
}