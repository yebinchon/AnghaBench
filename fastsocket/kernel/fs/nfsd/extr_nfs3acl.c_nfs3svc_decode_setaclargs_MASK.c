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
struct TYPE_2__ {struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_arg; } ;
struct nfsd3_setaclargs {int mask; int /*<<< orphan*/  acl_default; int /*<<< orphan*/  acl_access; int /*<<< orphan*/  fh; } ;
struct kvec {scalar_t__ iov_base; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NFS_ACL ; 
 int NFS_ACLCNT ; 
 int NFS_DFACL ; 
 int NFS_DFACLCNT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct svc_rqst *rqstp, __be32 *p,
		struct nfsd3_setaclargs *args)
{
	struct kvec *head = rqstp->rq_arg.head;
	unsigned int base;
	int n;

	if (!(p = FUNC0(p, &args->fh)))
		return 0;
	args->mask = FUNC2(*p++);
	if (args->mask & ~(NFS_ACL|NFS_ACLCNT|NFS_DFACL|NFS_DFACLCNT) ||
	    !FUNC3(rqstp, p))
		return 0;

	base = (char *)p - (char *)head->iov_base;
	n = FUNC1(&rqstp->rq_arg, base, NULL,
			  (args->mask & NFS_ACL) ?
			  &args->acl_access : NULL);
	if (n > 0)
		n = FUNC1(&rqstp->rq_arg, base + n, NULL,
				  (args->mask & NFS_DFACL) ?
				  &args->acl_default : NULL);
	return (n > 0);
}