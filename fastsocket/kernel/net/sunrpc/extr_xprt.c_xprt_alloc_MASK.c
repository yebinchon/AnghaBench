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
struct rpc_xprt {unsigned int max_reqs; unsigned int min_reqs; int /*<<< orphan*/  num_reqs; int /*<<< orphan*/  free; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_list; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*,struct net*) ; 

struct rpc_xprt *FUNC5(struct net *net, size_t size,
		unsigned int num_prealloc,
		unsigned int max_alloc)
{
	struct rpc_xprt *xprt;
	struct rpc_rqst *req;
	int i;

	xprt = FUNC1(size, GFP_KERNEL);
	if (xprt == NULL)
		goto out;

	FUNC4(xprt, net);

	for (i = 0; i < num_prealloc; i++) {
		req = FUNC1(sizeof(struct rpc_rqst), GFP_KERNEL);
		if (!req)
			break;
		FUNC2(&req->rq_list, &xprt->free);
	}
	if (i < num_prealloc)
		goto out_free;
	if (max_alloc > num_prealloc)
		xprt->max_reqs = max_alloc;
	else
		xprt->max_reqs = num_prealloc;
	xprt->min_reqs = num_prealloc;
	FUNC0(&xprt->num_reqs, num_prealloc);

	return xprt;

out_free:
	FUNC3(xprt);
out:
	return NULL;
}