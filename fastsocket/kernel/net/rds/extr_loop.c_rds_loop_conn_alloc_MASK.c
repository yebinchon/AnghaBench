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
struct rds_loop_connection {int /*<<< orphan*/  loop_node; struct rds_connection* conn; } ;
struct rds_connection {struct rds_loop_connection* c_transport_data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rds_loop_connection* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loop_conns ; 
 int /*<<< orphan*/  loop_conns_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct rds_connection *conn, gfp_t gfp)
{
	struct rds_loop_connection *lc;
	unsigned long flags;

	lc = FUNC1(sizeof(struct rds_loop_connection), gfp);
	if (!lc)
		return -ENOMEM;

	FUNC0(&lc->loop_node);
	lc->conn = conn;
	conn->c_transport_data = lc;

	FUNC3(&loop_conns_lock, flags);
	FUNC2(&lc->loop_node, &loop_conns);
	FUNC4(&loop_conns_lock, flags);

	return 0;
}