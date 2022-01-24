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
struct rxrpc_header {int dummy; } ;
struct rxrpc_connection {int size_align; int header_size; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  avail_calls; int /*<<< orphan*/  usage; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  calls; int /*<<< orphan*/  bundle_link; int /*<<< orphan*/  processor; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  RXRPC_MAXCALLS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rxrpc_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct rxrpc_connection* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 int /*<<< orphan*/  rxrpc_process_connection ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rxrpc_connection *FUNC10(gfp_t gfp)
{
	struct rxrpc_connection *conn;

	FUNC2("");

	conn = FUNC6(sizeof(struct rxrpc_connection), gfp);
	if (conn) {
		FUNC1(&conn->processor, &rxrpc_process_connection);
		FUNC0(&conn->bundle_link);
		conn->calls = RB_ROOT;
		FUNC8(&conn->rx_queue);
		FUNC7(&conn->lock);
		FUNC9(&conn->state_lock);
		FUNC5(&conn->usage, 1);
		conn->debug_id = FUNC4(&rxrpc_debug_id);
		conn->avail_calls = RXRPC_MAXCALLS;
		conn->size_align = 4;
		conn->header_size = sizeof(struct rxrpc_header);
	}

	FUNC3(" = %p{%d}", conn, conn ? conn->debug_id : 0);
	return conn;
}