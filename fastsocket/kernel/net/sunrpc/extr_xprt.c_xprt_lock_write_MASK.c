#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_xprt {int /*<<< orphan*/  transport_lock; TYPE_1__* ops; } ;
struct rpc_task {int dummy; } ;
struct TYPE_2__ {int (* reserve_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rpc_xprt*,struct rpc_task*) ; 

__attribute__((used)) static inline int FUNC3(struct rpc_xprt *xprt, struct rpc_task *task)
{
	int retval;

	FUNC0(&xprt->transport_lock);
	retval = xprt->ops->reserve_xprt(xprt, task);
	FUNC1(&xprt->transport_lock);
	return retval;
}