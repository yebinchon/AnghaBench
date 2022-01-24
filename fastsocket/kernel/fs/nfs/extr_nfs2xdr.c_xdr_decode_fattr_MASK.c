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
typedef  scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ minor; void* major; } ;
struct TYPE_4__ {void* blocks; void* blocksize; } ;
struct TYPE_5__ {TYPE_1__ nfs2; } ;
struct nfs_fattr {int mode; int /*<<< orphan*/  rdev; int /*<<< orphan*/  valid; int /*<<< orphan*/  ctime; int /*<<< orphan*/  change_attr; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; void* fileid; TYPE_3__ fsid; TYPE_2__ du; void* size; void* gid; void* uid; void* nlink; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NFCHR ; 
 scalar_t__ NFS2_FIFO_DEV ; 
 int /*<<< orphan*/  NFS_ATTR_FATTR_V2 ; 
 int S_IFIFO ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32 *
FUNC4(__be32 *p, struct nfs_fattr *fattr)
{
	u32 rdev, type;
	type = FUNC2(*p++);
	fattr->mode = FUNC2(*p++);
	fattr->nlink = FUNC2(*p++);
	fattr->uid = FUNC2(*p++);
	fattr->gid = FUNC2(*p++);
	fattr->size = FUNC2(*p++);
	fattr->du.nfs2.blocksize = FUNC2(*p++);
	rdev = FUNC2(*p++);
	fattr->du.nfs2.blocks = FUNC2(*p++);
	fattr->fsid.major = FUNC2(*p++);
	fattr->fsid.minor = 0;
	fattr->fileid = FUNC2(*p++);
	p = FUNC3(p, &fattr->atime);
	p = FUNC3(p, &fattr->mtime);
	p = FUNC3(p, &fattr->ctime);
	fattr->change_attr = FUNC1(&fattr->ctime);
	fattr->valid |= NFS_ATTR_FATTR_V2;
	fattr->rdev = FUNC0(rdev);
	if (type == NFCHR && rdev == NFS2_FIFO_DEV) {
		fattr->mode = (fattr->mode & ~S_IFMT) | S_IFIFO;
		fattr->rdev = 0;
	}
	return p;
}