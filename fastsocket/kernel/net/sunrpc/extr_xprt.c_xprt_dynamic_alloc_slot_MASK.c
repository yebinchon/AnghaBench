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
struct rpc_xprt {int /*<<< orphan*/  num_reqs; int /*<<< orphan*/  max_reqs; } ;
struct rpc_rqst {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct rpc_rqst* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rpc_rqst* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rpc_rqst *FUNC4(struct rpc_xprt *xprt, gfp_t gfp_flags)
{
	struct rpc_rqst *req = FUNC0(-EAGAIN);

	if (!FUNC1(&xprt->num_reqs, 1, xprt->max_reqs))
		goto out;
	req = FUNC3(sizeof(struct rpc_rqst), gfp_flags);
	if (req != NULL)
		goto out;
	FUNC2(&xprt->num_reqs);
	req = FUNC0(-ENOMEM);
out:
	return req;
}