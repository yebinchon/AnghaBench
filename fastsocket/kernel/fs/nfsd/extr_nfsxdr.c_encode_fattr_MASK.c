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
typedef  int u32 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct svc_rqst {int dummy; } ;
struct svc_fh {TYPE_1__* fh_export; struct dentry* fh_dentry; } ;
struct TYPE_6__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct kstat {int mode; scalar_t__ size; TYPE_3__ ctime; TYPE_2__ atime; scalar_t__ ino; int /*<<< orphan*/  dev; scalar_t__ blocks; int /*<<< orphan*/  rdev; scalar_t__ blksize; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; scalar_t__ nlink; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ ex_uuid; scalar_t__ ex_fsid; } ;

/* Variables and functions */
#define  FSIDSOURCE_DEV 130 
#define  FSIDSOURCE_FSID 129 
#define  FSIDSOURCE_UUID 128 
 scalar_t__ NFS_MAXPATHLEN ; 
 int S_IFMT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct svc_fh*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int* nfs_ftypes ; 
 scalar_t__ FUNC7 (struct svc_rqst*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct svc_rqst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *
FUNC9(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp,
	     struct kstat *stat)
{
	struct dentry	*dentry = fhp->fh_dentry;
	int type;
	struct timespec time;
	u32 f;

	type = (stat->mode & S_IFMT);

	*p++ = FUNC4(nfs_ftypes[type >> 12]);
	*p++ = FUNC4((u32) stat->mode);
	*p++ = FUNC4((u32) stat->nlink);
	*p++ = FUNC4((u32) FUNC8(rqstp, stat->uid));
	*p++ = FUNC4((u32) FUNC7(rqstp, stat->gid));

	if (FUNC2(type) && stat->size > NFS_MAXPATHLEN) {
		*p++ = FUNC4(NFS_MAXPATHLEN);
	} else {
		*p++ = FUNC4((u32) stat->size);
	}
	*p++ = FUNC4((u32) stat->blksize);
	if (FUNC1(type) || FUNC0(type))
		*p++ = FUNC4(FUNC6(stat->rdev));
	else
		*p++ = FUNC4(0xffffffff);
	*p++ = FUNC4((u32) stat->blocks);
	switch (FUNC3(fhp)) {
	default:
	case FSIDSOURCE_DEV:
		*p++ = FUNC4(FUNC6(stat->dev));
		break;
	case FSIDSOURCE_FSID:
		*p++ = FUNC4((u32) fhp->fh_export->ex_fsid);
		break;
	case FSIDSOURCE_UUID:
		f = ((u32*)fhp->fh_export->ex_uuid)[0];
		f ^= ((u32*)fhp->fh_export->ex_uuid)[1];
		f ^= ((u32*)fhp->fh_export->ex_uuid)[2];
		f ^= ((u32*)fhp->fh_export->ex_uuid)[3];
		*p++ = FUNC4(f);
		break;
	}
	*p++ = FUNC4((u32) stat->ino);
	*p++ = FUNC4((u32) stat->atime.tv_sec);
	*p++ = FUNC4(stat->atime.tv_nsec ? stat->atime.tv_nsec / 1000 : 0);
	FUNC5(dentry->d_inode, &time); 
	*p++ = FUNC4((u32) time.tv_sec);
	*p++ = FUNC4(time.tv_nsec ? time.tv_nsec / 1000 : 0); 
	*p++ = FUNC4((u32) stat->ctime.tv_sec);
	*p++ = FUNC4(stat->ctime.tv_nsec ? stat->ctime.tv_nsec / 1000 : 0);

	return p;
}