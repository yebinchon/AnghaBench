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
struct rpc_rqst {int /*<<< orphan*/  rq_snd_buf; } ;
struct nsm_args {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct nsm_args const*) ; 
 int FUNC1 (struct xdr_stream*,struct nsm_args const*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rpc_rqst *req, __be32 *p,
		       const struct nsm_args *argp)
{
	struct xdr_stream xdr;
	int status;

	FUNC3(&xdr, &req->rq_snd_buf, p);
	status = FUNC0(&xdr, argp);
	if (FUNC2(status))
		return status;
	return FUNC1(&xdr, argp);
}