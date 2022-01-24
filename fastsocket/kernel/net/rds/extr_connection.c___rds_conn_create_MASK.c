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
struct rds_transport {int (* conn_alloc ) (struct rds_connection*,int /*<<< orphan*/ ) ;char* t_name; int /*<<< orphan*/  (* conn_free ) (int /*<<< orphan*/ ) ;scalar_t__ t_prefer_loopback; } ;
struct rds_connection {int c_loopback; int c_next_tx_seq; int /*<<< orphan*/  c_hash_node; int /*<<< orphan*/  c_transport_data; struct rds_connection* c_passive; scalar_t__ c_flags; int /*<<< orphan*/  c_cm_lock; int /*<<< orphan*/  c_down_w; int /*<<< orphan*/  c_conn_w; int /*<<< orphan*/  c_recv_w; int /*<<< orphan*/  c_send_w; scalar_t__ c_reconnect_jiffies; int /*<<< orphan*/  c_state; struct rds_transport* c_trans; int /*<<< orphan*/  c_retrans; int /*<<< orphan*/  c_send_queue; int /*<<< orphan*/  c_waitq; int /*<<< orphan*/  c_lock; void* c_faddr; void* c_laddr; } ;
struct hlist_head {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  void* __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 struct rds_connection* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDS_CONN_DOWN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rds_connection*) ; 
 struct rds_connection* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct rds_connection*) ; 
 int FUNC14 (struct rds_connection*) ; 
 struct hlist_head* FUNC15 (void*,void*) ; 
 int /*<<< orphan*/  rds_conn_count ; 
 int /*<<< orphan*/  rds_conn_lock ; 
 struct rds_connection* FUNC16 (struct hlist_head*,void*,void*,struct rds_transport*) ; 
 int /*<<< orphan*/  rds_conn_slab ; 
 int /*<<< orphan*/  rds_connect_worker ; 
 struct rds_transport rds_loop_transport ; 
 int /*<<< orphan*/  rds_recv_worker ; 
 int /*<<< orphan*/  rds_send_worker ; 
 int /*<<< orphan*/  rds_shutdown_worker ; 
 struct rds_transport* FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (struct rds_transport*) ; 
 int /*<<< orphan*/  FUNC19 (char*,struct rds_connection*,void**,void**,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC23 (struct rds_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rds_connection *FUNC26(__be32 laddr, __be32 faddr,
				       struct rds_transport *trans, gfp_t gfp,
				       int is_outgoing)
{
	struct rds_connection *conn, *parent = NULL;
	struct hlist_head *head = FUNC15(laddr, faddr);
	struct rds_transport *loop_trans;
	unsigned long flags;
	int ret;

	FUNC11();
	conn = FUNC16(head, laddr, faddr, trans);
	if (conn
	 && conn->c_loopback
	 && conn->c_trans != &rds_loop_transport
	 && !is_outgoing) {
		/* This is a looped back IB connection, and we're
		 * called by the code handling the incoming connect.
		 * We need a second connection object into which we
		 * can stick the other QP. */
		parent = conn;
		conn = parent->c_passive;
	}
	FUNC12();
	if (conn)
		goto out;

	conn = FUNC9(rds_conn_slab, gfp);
	if (!conn) {
		conn = FUNC0(-ENOMEM);
		goto out;
	}

	FUNC2(&conn->c_hash_node);
	conn->c_laddr = laddr;
	conn->c_faddr = faddr;
	FUNC20(&conn->c_lock);
	conn->c_next_tx_seq = 1;

	FUNC7(&conn->c_waitq);
	FUNC3(&conn->c_send_queue);
	FUNC3(&conn->c_retrans);

	ret = FUNC14(conn);
	if (ret) {
		FUNC8(rds_conn_slab, conn);
		conn = FUNC0(ret);
		goto out;
	}

	/*
	 * This is where a connection becomes loopback.  If *any* RDS sockets
	 * can bind to the destination address then we'd rather the messages
	 * flow through loopback rather than either transport.
	 */
	loop_trans = FUNC17(faddr);
	if (loop_trans) {
		FUNC18(loop_trans);
		conn->c_loopback = 1;
		if (is_outgoing && trans->t_prefer_loopback) {
			/* "outgoing" connection - and the transport
			 * says it wants the connection handled by the
			 * loopback transport. This is what TCP does.
			 */
			trans = &rds_loop_transport;
		}
	}

	conn->c_trans = trans;

	ret = trans->conn_alloc(conn, gfp);
	if (ret) {
		FUNC8(rds_conn_slab, conn);
		conn = FUNC0(ret);
		goto out;
	}

	FUNC5(&conn->c_state, RDS_CONN_DOWN);
	conn->c_reconnect_jiffies = 0;
	FUNC1(&conn->c_send_w, rds_send_worker);
	FUNC1(&conn->c_recv_w, rds_recv_worker);
	FUNC1(&conn->c_conn_w, rds_connect_worker);
	FUNC4(&conn->c_down_w, rds_shutdown_worker);
	FUNC10(&conn->c_cm_lock);
	conn->c_flags = 0;

	FUNC19("allocated conn %p for %pI4 -> %pI4 over %s %s\n",
	  conn, &laddr, &faddr,
	  trans->t_name ? trans->t_name : "[unknown]",
	  is_outgoing ? "(outgoing)" : "");

	/*
	 * Since we ran without holding the conn lock, someone could
	 * have created the same conn (either normal or passive) in the
	 * interim. We check while holding the lock. If we won, we complete
	 * init and return our conn. If we lost, we rollback and return the
	 * other one.
	 */
	FUNC21(&rds_conn_lock, flags);
	if (parent) {
		/* Creating passive conn */
		if (parent->c_passive) {
			trans->conn_free(conn->c_transport_data);
			FUNC8(rds_conn_slab, conn);
			conn = parent->c_passive;
		} else {
			parent->c_passive = conn;
			FUNC13(conn);
			rds_conn_count++;
		}
	} else {
		/* Creating normal conn */
		struct rds_connection *found;

		found = FUNC16(head, laddr, faddr, trans);
		if (found) {
			trans->conn_free(conn->c_transport_data);
			FUNC8(rds_conn_slab, conn);
			conn = found;
		} else {
			FUNC6(&conn->c_hash_node, head);
			FUNC13(conn);
			rds_conn_count++;
		}
	}
	FUNC22(&rds_conn_lock, flags);

out:
	return conn;
}