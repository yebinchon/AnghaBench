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
struct rds_tcp_connection {int /*<<< orphan*/  t_tcp_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_tcp_conn_lock ; 
 int /*<<< orphan*/  rds_tcp_conn_slab ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct rds_tcp_connection *tc = arg;
	unsigned long flags;
	FUNC2("freeing tc %p\n", tc);

	FUNC3(&rds_tcp_conn_lock, flags);
	FUNC1(&tc->t_tcp_node);
	FUNC4(&rds_tcp_conn_lock, flags);

	FUNC0(rds_tcp_conn_slab, tc);
}