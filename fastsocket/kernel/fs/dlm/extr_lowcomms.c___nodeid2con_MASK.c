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
struct connection {int nodeid; int /*<<< orphan*/  rx_action; int /*<<< orphan*/  connect_action; int /*<<< orphan*/  rwork; int /*<<< orphan*/  swork; int /*<<< orphan*/  writequeue_lock; int /*<<< orphan*/  writequeue; int /*<<< orphan*/  sock_mutex; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct connection* FUNC2 (int) ; 
 int /*<<< orphan*/  con_cache ; 
 int /*<<< orphan*/ * connection_hash ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct connection* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  process_recv_sockets ; 
 int /*<<< orphan*/  process_send_sockets ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct connection *FUNC8(int nodeid, gfp_t alloc)
{
	struct connection *con = NULL;
	int r;

	con = FUNC2(nodeid);
	if (con || !alloc)
		return con;

	con = FUNC4(con_cache, alloc);
	if (!con)
		return NULL;

	r = FUNC6(nodeid);
	FUNC3(&con->list, &connection_hash[r]);

	con->nodeid = nodeid;
	FUNC5(&con->sock_mutex);
	FUNC0(&con->writequeue);
	FUNC7(&con->writequeue_lock);
	FUNC1(&con->swork, process_send_sockets);
	FUNC1(&con->rwork, process_recv_sockets);

	/* Setup action pointers for child sockets */
	if (con->nodeid) {
		struct connection *zerocon = FUNC2(0);

		con->connect_action = zerocon->connect_action;
		if (!con->rx_action)
			con->rx_action = zerocon->rx_action;
	}

	return con;
}