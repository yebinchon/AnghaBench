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
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_rcv_buf; } ;
struct nfs4_fs_locations_res {TYPE_1__* fs_locations; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  server; int /*<<< orphan*/  fattr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct xdr_stream*,struct compound_hdr*) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*) ; 
 int FUNC3 (struct xdr_stream*) ; 
 int FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct rpc_rqst *req, __be32 *p,
				     struct nfs4_fs_locations_res *res)
{
	struct xdr_stream xdr;
	struct compound_hdr hdr;
	int status;

	FUNC6(&xdr, &req->rq_rcv_buf, p);
	status = FUNC0(&xdr, &hdr);
	if (status)
		goto out;
	status = FUNC4(&xdr, &res->seq_res, req);
	if (status)
		goto out;
	if ((status = FUNC3(&xdr)) != 0)
		goto out;
	if ((status = FUNC2(&xdr)) != 0)
		goto out;
	FUNC5(&xdr, PAGE_SIZE);
	status = FUNC1(&xdr, &res->fs_locations->fattr,
				 res->fs_locations->server);
out:
	return status;
}