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
struct rpc_xprt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rpc_xprt*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*) ; 

__attribute__((used)) static void FUNC4(struct rpc_xprt *xprt, unsigned short port)
{
	FUNC0("RPC:       setting port for xprt %p to %u\n", xprt, port);

	FUNC1(FUNC2(xprt), port);
	FUNC3(xprt);
}