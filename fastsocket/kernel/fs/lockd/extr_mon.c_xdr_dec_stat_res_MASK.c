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
typedef  int /*<<< orphan*/  u32 ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_rcv_buf; } ;
struct nsm_res {void* state; void* status; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct rpc_rqst *rqstp, __be32 *p,
			    struct nsm_res *resp)
{
	struct xdr_stream xdr;

	FUNC3(&xdr, &rqstp->rq_rcv_buf, p);
	p = FUNC4(&xdr, 2 * sizeof(u32));
	if (FUNC2(p == NULL))
		return -EIO;
	resp->status = FUNC1(*p++);
	resp->state = FUNC1(*p);

	FUNC0("lockd: xdr_dec_stat_res status %d state %d\n",
			resp->status, resp->state);
	return 0;
}