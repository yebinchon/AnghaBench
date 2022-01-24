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
typedef  int /*<<< orphan*/  u32 ;
struct rpc_rqst {int /*<<< orphan*/  rq_rcv_buf; int /*<<< orphan*/  rq_svec; int /*<<< orphan*/  rq_slen; TYPE_1__* rq_cred; } ;
struct rpc_auth {int au_rslack; } ;
struct nfs_readdirargs {int /*<<< orphan*/  pages; int /*<<< orphan*/  cookie; int /*<<< orphan*/  fh; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct rpc_auth* cr_auth; } ;

/* Variables and functions */
 int NFS_readdirres_sz ; 
 int RPC_REPHDRSIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct rpc_rqst *req, __be32 *p, struct nfs_readdirargs *args)
{
	struct rpc_auth	*auth = req->rq_cred->cr_auth;
	unsigned int replen;
	u32 count = args->count;

	p = FUNC2(p, args->fh);
	*p++ = FUNC0(args->cookie);
	*p++ = FUNC0(count); /* see above */
	req->rq_slen = FUNC1(req->rq_svec, p);

	/* Inline the page array */
	replen = (RPC_REPHDRSIZE + auth->au_rslack + NFS_readdirres_sz) << 2;
	FUNC3(&req->rq_rcv_buf, replen, args->pages, 0, count);
	return 0;
}