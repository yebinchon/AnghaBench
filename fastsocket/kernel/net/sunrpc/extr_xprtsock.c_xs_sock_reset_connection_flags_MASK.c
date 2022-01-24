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
struct rpc_xprt {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_CLOSE_WAIT ; 
 int /*<<< orphan*/  XPRT_CLOSING ; 
 int /*<<< orphan*/  XPRT_CONNECTION_ABORT ; 
 int /*<<< orphan*/  XPRT_CONNECTION_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct rpc_xprt *xprt)
{
	FUNC2();
	FUNC0(XPRT_CONNECTION_ABORT, &xprt->state);
	FUNC0(XPRT_CONNECTION_CLOSE, &xprt->state);
	FUNC0(XPRT_CLOSE_WAIT, &xprt->state);
	FUNC0(XPRT_CLOSING, &xprt->state);
	FUNC1();
}