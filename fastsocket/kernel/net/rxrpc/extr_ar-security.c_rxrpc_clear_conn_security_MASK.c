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
struct rxrpc_connection {int /*<<< orphan*/  server_key; int /*<<< orphan*/  key; TYPE_1__* security; int /*<<< orphan*/  debug_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clear ) (struct rxrpc_connection*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_connection*) ; 

void FUNC4(struct rxrpc_connection *conn)
{
	FUNC0("{%d}", conn->debug_id);

	if (conn->security) {
		conn->security->clear(conn);
		FUNC2(conn->security);
		conn->security = NULL;
	}

	FUNC1(conn->key);
	FUNC1(conn->server_key);
}