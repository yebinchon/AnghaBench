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
struct rpc_xprt {int /*<<< orphan*/  xprt_net; int /*<<< orphan*/  backlog; int /*<<< orphan*/  sending; int /*<<< orphan*/  pending; int /*<<< orphan*/  binding; scalar_t__ bind_index; int /*<<< orphan*/  cwnd; int /*<<< orphan*/  last_used; int /*<<< orphan*/  bc_pa_list; int /*<<< orphan*/  bc_pa_lock; int /*<<< orphan*/  recv; int /*<<< orphan*/  free; int /*<<< orphan*/  reserve_lock; int /*<<< orphan*/  transport_lock; int /*<<< orphan*/  count; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RPC_INITCWND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*) ; 

__attribute__((used)) static void FUNC7(struct rpc_xprt *xprt, struct net *net)
{
	FUNC1(&xprt->count, 1);

	FUNC5(&xprt->transport_lock);
	FUNC5(&xprt->reserve_lock);

	FUNC0(&xprt->free);
	FUNC0(&xprt->recv);
#if defined(CONFIG_NFS_V4_1)
	spin_lock_init(&xprt->bc_pa_lock);
	INIT_LIST_HEAD(&xprt->bc_pa_list);
#endif /* CONFIG_NFS_V4_1 */

	xprt->last_used = jiffies;
	xprt->cwnd = RPC_INITCWND;
	xprt->bind_index = 0;

	FUNC4(&xprt->binding, "xprt_binding");
	FUNC4(&xprt->pending, "xprt_pending");
	FUNC3(&xprt->sending, "xprt_sending");
	FUNC3(&xprt->backlog, "xprt_backlog");

	FUNC6(xprt);

	xprt->xprt_net = FUNC2(net);
}