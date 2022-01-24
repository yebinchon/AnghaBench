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
struct rds_tcp_connection {int t_tinc_hdr_rem; int /*<<< orphan*/  t_tcp_node; scalar_t__ t_tinc_data_rem; int /*<<< orphan*/ * t_tinc; int /*<<< orphan*/ * t_sock; } ;
struct rds_header {int dummy; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct rds_tcp_connection* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_tcp_conn_list ; 
 int /*<<< orphan*/  rds_tcp_conn_lock ; 
 int /*<<< orphan*/  rds_tcp_conn_slab ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rds_connection *conn, gfp_t gfp)
{
	struct rds_tcp_connection *tc;

	tc = FUNC0(rds_tcp_conn_slab, gfp);
	if (!tc)
		return -ENOMEM;

	tc->t_sock = NULL;
	tc->t_tinc = NULL;
	tc->t_tinc_hdr_rem = sizeof(struct rds_header);
	tc->t_tinc_data_rem = 0;

	conn->c_transport_data = tc;

	FUNC3(&rds_tcp_conn_lock);
	FUNC1(&tc->t_tcp_node, &rds_tcp_conn_list);
	FUNC4(&rds_tcp_conn_lock);

	FUNC2("alloced tc %p\n", conn->c_transport_data);
	return 0;
}