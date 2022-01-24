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
struct rds_iw_connection {int /*<<< orphan*/  iw_node; struct rds_connection* conn; int /*<<< orphan*/  i_recv_ring; int /*<<< orphan*/  i_send_ring; int /*<<< orphan*/  i_ack_lock; int /*<<< orphan*/  i_recv_mutex; int /*<<< orphan*/  i_recv_tasklet; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iw_nodev_conns ; 
 int /*<<< orphan*/  iw_nodev_conns_lock ; 
 struct rds_iw_connection* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_iw_recv_tasklet_fn ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_iw_sysctl_max_recv_wr ; 
 int /*<<< orphan*/  rds_iw_sysctl_max_send_wr ; 
 int /*<<< orphan*/  FUNC5 (char*,struct rds_connection*,struct rds_iw_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC10(struct rds_connection *conn, gfp_t gfp)
{
	struct rds_iw_connection *ic;
	unsigned long flags;

	/* XXX too lazy? */
	ic = FUNC1(sizeof(struct rds_iw_connection), gfp);
	if (!ic)
		return -ENOMEM;

	FUNC0(&ic->iw_node);
	FUNC9(&ic->i_recv_tasklet, rds_iw_recv_tasklet_fn,
		     (unsigned long) ic);
	FUNC3(&ic->i_recv_mutex);
#ifndef KERNEL_HAS_ATOMIC64
	FUNC6(&ic->i_ack_lock);
#endif

	/*
	 * rds_iw_conn_shutdown() waits for these to be emptied so they
	 * must be initialized before it can be called.
	 */
	FUNC4(&ic->i_send_ring, rds_iw_sysctl_max_send_wr);
	FUNC4(&ic->i_recv_ring, rds_iw_sysctl_max_recv_wr);

	ic->conn = conn;
	conn->c_transport_data = ic;

	FUNC7(&iw_nodev_conns_lock, flags);
	FUNC2(&ic->iw_node, &iw_nodev_conns);
	FUNC8(&iw_nodev_conns_lock, flags);


	FUNC5("conn %p conn ic %p\n", conn, conn->c_transport_data);
	return 0;
}