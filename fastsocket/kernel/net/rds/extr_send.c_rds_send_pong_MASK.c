#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  i_hdr; struct rds_connection* i_conn; } ;
struct TYPE_3__ {int op_active; } ;
struct rds_message {TYPE_2__ m_inc; int /*<<< orphan*/  m_flags; int /*<<< orphan*/  m_conn_item; TYPE_1__ data; int /*<<< orphan*/  m_daddr; } ;
struct rds_connection {int /*<<< orphan*/  c_send_w; int /*<<< orphan*/  c_flags; int /*<<< orphan*/  c_lock; int /*<<< orphan*/  c_next_tx_seq; int /*<<< orphan*/  c_send_queue; int /*<<< orphan*/  c_fcong; int /*<<< orphan*/  c_faddr; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RDS_LL_SEND_FULL ; 
 int /*<<< orphan*/  RDS_MSG_ON_CONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_message*) ; 
 struct rds_message* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  s_send_pong ; 
 int /*<<< orphan*/  s_send_queued ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC13(struct rds_connection *conn, __be16 dport)
{
	struct rds_message *rm;
	unsigned long flags;
	int ret = 0;

	rm = FUNC5(0, GFP_ATOMIC);
	if (!rm) {
		ret = -ENOMEM;
		goto out;
	}

	rm->m_daddr = conn->c_faddr;
	rm->data.op_active = 1;

	FUNC3(conn);

	ret = FUNC2(conn->c_fcong, dport, 1, NULL);
	if (ret)
		goto out;

	FUNC10(&conn->c_lock, flags);
	FUNC0(&rm->m_conn_item, &conn->c_send_queue);
	FUNC9(RDS_MSG_ON_CONN, &rm->m_flags);
	FUNC4(rm);
	rm->m_inc.i_conn = conn;

	FUNC6(&rm->m_inc.i_hdr, 0, dport,
				    conn->c_next_tx_seq);
	conn->c_next_tx_seq++;
	FUNC11(&conn->c_lock, flags);

	FUNC8(s_send_queued);
	FUNC8(s_send_pong);

	if (!FUNC12(RDS_LL_SEND_FULL, &conn->c_flags))
		FUNC1(rds_wq, &conn->c_send_w, 0);

	FUNC7(rm);
	return 0;

out:
	if (rm)
		FUNC7(rm);
	return ret;
}