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
struct rpc_xprt {int /*<<< orphan*/  reserve_lock; int /*<<< orphan*/  backlog; int /*<<< orphan*/  free; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_rqst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_xprt*,struct rpc_rqst*) ; 

__attribute__((used)) static void FUNC6(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
	FUNC3(&xprt->reserve_lock);
	if (!FUNC5(xprt, req)) {
		FUNC1(req, 0, sizeof(*req));	/* mark unused */
		FUNC0(&req->rq_list, &xprt->free);
	}
	FUNC2(&xprt->backlog);
	FUNC4(&xprt->reserve_lock);
}