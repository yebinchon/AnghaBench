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
struct socket {int /*<<< orphan*/  sk; } ;
struct rxrpc_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rxrpc_call*) ; 
 struct rxrpc_call* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct rxrpc_call *FUNC4(struct socket *sock,
					    unsigned long user_call_ID)
{
	struct rxrpc_call *call;

	FUNC0(",%lx", user_call_ID);
	call = FUNC2(FUNC3(sock->sk), user_call_ID);
	FUNC1(" = %p", call);
	return call;
}