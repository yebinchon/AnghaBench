#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct rpc_xprt {scalar_t__ reestablish_timeout; } ;
struct TYPE_4__ {struct rpc_xprt* data; } ;
struct TYPE_5__ {int count; TYPE_1__ arg; } ;
typedef  TYPE_2__ read_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sock*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct rpc_xprt* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  xs_tcp_data_recv ; 

__attribute__((used)) static void FUNC5(struct sock *sk, int bytes)
{
	struct rpc_xprt *xprt;
	read_descriptor_t rd_desc;
	int read;

	FUNC0("RPC:       xs_tcp_data_ready...\n");

	FUNC1(&sk->sk_callback_lock);
	if (!(xprt = FUNC4(sk)))
		goto out;
	/* Any data means we had a useful conversation, so
	 * the we don't need to delay the next reconnect
	 */
	if (xprt->reestablish_timeout)
		xprt->reestablish_timeout = 0;

	/* We use rd_desc to pass struct xprt to xs_tcp_data_recv */
	rd_desc.arg.data = xprt;
	do {
		rd_desc.count = 65536;
		read = FUNC3(sk, &rd_desc, xs_tcp_data_recv);
	} while (read > 0);
out:
	FUNC2(&sk->sk_callback_lock);
}