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
struct rpc_xprt {int /*<<< orphan*/  transport_lock; scalar_t__ snd_task; int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rpc_xprt *xprt)
{
	FUNC2(&xprt->transport_lock);
	if (xprt->snd_task) {
		FUNC0("RPC:       write space: waking waiting task on "
				"xprt %p\n", xprt);
		FUNC1(&xprt->pending, xprt->snd_task);
	}
	FUNC3(&xprt->transport_lock);
}