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
struct mountres {scalar_t__ errno; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct mountres*) ; 
 int FUNC1 (struct xdr_stream*,struct mountres*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rpc_rqst *req, __be32 *p,
			    struct mountres *res)
{
	struct xdr_stream xdr;
	int status;

	FUNC3(&xdr, &req->rq_rcv_buf, p);

	status = FUNC1(&xdr, res);
	if (FUNC2(status != 0 || res->errno != 0))
		return status;
	return FUNC0(&xdr, res);
}