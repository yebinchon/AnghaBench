#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_rcv_buf; } ;
struct nfs4_statfs_res {int /*<<< orphan*/  fsstat; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct compound_hdr*) ; 
 int FUNC1 (struct xdr_stream*) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 
 int FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rpc_rqst *req, __be32 *p,
			       struct nfs4_statfs_res *res)
{
	struct xdr_stream xdr;
	struct compound_hdr hdr;
	int status;

	FUNC4(&xdr, &req->rq_rcv_buf, p);
	status = FUNC0(&xdr, &hdr);
	if (!status)
		status = FUNC2(&xdr, &res->seq_res, req);
	if (!status)
		status = FUNC1(&xdr);
	if (!status)
		status = FUNC3(&xdr, res->fsstat);
	return status;
}