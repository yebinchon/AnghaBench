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
struct nfs_getaclres {int /*<<< orphan*/  seq_res; int /*<<< orphan*/ * acl_scratch; } ;
struct compound_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct xdr_stream*,struct compound_hdr*) ; 
 int FUNC1 (struct xdr_stream*,struct rpc_rqst*,struct nfs_getaclres*) ; 
 int FUNC2 (struct xdr_stream*) ; 
 int FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct rpc_rqst *rqstp, __be32 *p,
		    struct nfs_getaclres *res)
{
	struct xdr_stream xdr;
	struct compound_hdr hdr;
	int status;

	FUNC5(&xdr, &rqstp->rq_rcv_buf, p);
	if (res->acl_scratch != NULL) {
		void *p = FUNC4(res->acl_scratch);
		FUNC6(&xdr, p, PAGE_SIZE);
	}
	status = FUNC0(&xdr, &hdr);
	if (status)
		goto out;
	status = FUNC3(&xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC2(&xdr);
	if (status)
		goto out;
	status = FUNC1(&xdr, rqstp, res);

out:
	return status;
}