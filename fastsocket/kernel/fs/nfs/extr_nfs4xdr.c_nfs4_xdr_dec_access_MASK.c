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
struct nfs4_accessres {int /*<<< orphan*/  server; int /*<<< orphan*/  fattr; int /*<<< orphan*/  access; int /*<<< orphan*/  supported; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xdr_stream*) ; 
 int FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rpc_rqst *rqstp, __be32 *p, struct nfs4_accessres *res)
{
	struct xdr_stream xdr;
	struct compound_hdr hdr;
	int status;

	FUNC5(&xdr, &rqstp->rq_rcv_buf, p);
	status = FUNC1(&xdr, &hdr);
	if (status)
		goto out;
	status = FUNC4(&xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC3(&xdr);
	if (status != 0)
		goto out;
	status = FUNC0(&xdr, &res->supported, &res->access);
	if (status != 0)
		goto out;
	FUNC2(&xdr, res->fattr, res->server);
out:
	return status;
}