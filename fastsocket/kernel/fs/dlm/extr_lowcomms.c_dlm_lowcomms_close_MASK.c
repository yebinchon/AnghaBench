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
struct dlm_node_addr {size_t addr_count; struct dlm_node_addr** addr; int /*<<< orphan*/  list; } ;
struct connection {int /*<<< orphan*/  rwork; int /*<<< orphan*/  swork; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CLOSE ; 
 int /*<<< orphan*/  CF_CONNECT_PENDING ; 
 int /*<<< orphan*/  CF_WRITE_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,int) ; 
 int /*<<< orphan*/  dlm_node_addrs_spin ; 
 struct dlm_node_addr* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_node_addr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 struct connection* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(int nodeid)
{
	struct connection *con;
	struct dlm_node_addr *na;

	FUNC7("closing connection to node %d", nodeid);
	con = FUNC8(nodeid, 0);
	if (con) {
		FUNC2(CF_CONNECT_PENDING, &con->flags);
		FUNC2(CF_WRITE_PENDING, &con->flags);
		FUNC9(CF_CLOSE, &con->flags);
		if (FUNC0(&con->swork))
			FUNC7("canceled swork for node %d", nodeid);
		if (FUNC0(&con->rwork))
			FUNC7("canceled rwork for node %d", nodeid);
		FUNC1(con);
		FUNC3(con, true);
	}

	FUNC10(&dlm_node_addrs_spin);
	na = FUNC4(nodeid);
	if (na) {
		FUNC6(&na->list);
		while (na->addr_count--)
			FUNC5(na->addr[na->addr_count]);
		FUNC5(na);
	}
	FUNC11(&dlm_node_addrs_spin);

	return 0;
}