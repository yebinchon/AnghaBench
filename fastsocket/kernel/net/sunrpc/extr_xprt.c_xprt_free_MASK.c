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
struct rpc_xprt {int /*<<< orphan*/  xprt_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_xprt*) ; 

void FUNC3(struct rpc_xprt *xprt)
{
	FUNC1(xprt->xprt_net);
	FUNC2(xprt);
	FUNC0(xprt);
}