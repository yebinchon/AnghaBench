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
typedef  scalar_t__ uid_t ;
struct svc_cred {int /*<<< orphan*/ * cr_group_info; scalar_t__ cr_gid; scalar_t__ cr_uid; } ;
struct TYPE_4__ {struct kvec* head; } ;
struct TYPE_3__ {struct kvec* head; } ;
struct svc_rqst {int /*<<< orphan*/  rq_flavor; int /*<<< orphan*/ * rq_client; struct svc_cred rq_cred; TYPE_2__ rq_res; TYPE_1__ rq_arg; } ;
struct kvec {int iov_len; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_AUTH_NULL ; 
 int SVC_CLOSE ; 
 int SVC_DENIED ; 
 int SVC_GARBAGE ; 
 int SVC_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_autherr_badcred ; 
 int /*<<< orphan*/  rpc_autherr_badverf ; 
 scalar_t__ FUNC3 (struct kvec*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct svc_rqst *rqstp, __be32 *authp)
{
	struct kvec	*argv = &rqstp->rq_arg.head[0];
	struct kvec	*resv = &rqstp->rq_res.head[0];
	struct svc_cred	*cred = &rqstp->rq_cred;

	cred->cr_group_info = NULL;
	rqstp->rq_client = NULL;

	if (argv->iov_len < 3*4)
		return SVC_GARBAGE;

	if (FUNC3(argv) != 0) {
		FUNC0("svc: bad null cred\n");
		*authp = rpc_autherr_badcred;
		return SVC_DENIED;
	}
	if (FUNC3(argv) != FUNC2(RPC_AUTH_NULL) || FUNC3(argv) != 0) {
		FUNC0("svc: bad null verf\n");
		*authp = rpc_autherr_badverf;
		return SVC_DENIED;
	}

	/* Signal that mapping to nobody uid/gid is required */
	cred->cr_uid = (uid_t) -1;
	cred->cr_gid = (gid_t) -1;
	cred->cr_group_info = FUNC1(0);
	if (cred->cr_group_info == NULL)
		return SVC_CLOSE; /* kmalloc failure - client must retry */

	/* Put NULL verifier */
	FUNC4(resv, RPC_AUTH_NULL);
	FUNC4(resv, 0);

	rqstp->rq_flavor = RPC_AUTH_NULL;
	return SVC_OK;
}