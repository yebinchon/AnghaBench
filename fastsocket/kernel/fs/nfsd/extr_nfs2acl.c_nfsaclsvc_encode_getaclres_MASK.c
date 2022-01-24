#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int page_len; struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_res; int /*<<< orphan*/  rq_resused; int /*<<< orphan*/ * rq_respages; } ;
struct TYPE_4__ {struct dentry* fh_dentry; } ;
struct nfsd3_getaclres {int mask; int /*<<< orphan*/ * acl_default; int /*<<< orphan*/ * acl_access; TYPE_2__ fh; } ;
struct kvec {scalar_t__ iov_base; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NFS_ACL ; 
 int /*<<< orphan*/  NFS_ACL_DEFAULT ; 
 int NFS_DFACL ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct svc_rqst*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,unsigned int,struct inode*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct svc_rqst *rqstp, __be32 *p,
		struct nfsd3_getaclres *resp)
{
	struct dentry *dentry = resp->fh.fh_dentry;
	struct inode *inode;
	struct kvec *head = rqstp->rq_res.head;
	unsigned int base;
	int n;
	int w;

	/*
	 * Since this is version 2, the check for nfserr in
	 * nfsd_dispatch actually ensures the following cannot happen.
	 * However, it seems fragile to depend on that.
	 */
	if (dentry == NULL || dentry->d_inode == NULL)
		return 0;
	inode = dentry->d_inode;

	p = FUNC1(rqstp, p, &resp->fh);
	*p++ = FUNC0(resp->mask);
	if (!FUNC4(rqstp, p))
		return 0;
	base = (char *)p - (char *)head->iov_base;

	rqstp->rq_res.page_len = w = FUNC3(
		(resp->mask & NFS_ACL)   ? resp->acl_access  : NULL,
		(resp->mask & NFS_DFACL) ? resp->acl_default : NULL);
	while (w > 0) {
		if (!rqstp->rq_respages[rqstp->rq_resused++])
			return 0;
		w -= PAGE_SIZE;
	}

	n = FUNC2(&rqstp->rq_res, base, inode,
			  resp->acl_access,
			  resp->mask & NFS_ACL, 0);
	if (n > 0)
		n = FUNC2(&rqstp->rq_res, base + n, inode,
				  resp->acl_default,
				  resp->mask & NFS_DFACL,
				  NFS_ACL_DEFAULT);
	if (n <= 0)
		return 0;
	return 1;
}