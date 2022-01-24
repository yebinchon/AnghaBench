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
struct sock {int dummy; } ;
struct rds_sock {int /*<<< orphan*/  rs_recv_lock; int /*<<< orphan*/  rs_recv_queue; } ;
struct TYPE_2__ {scalar_t__ h_sport; scalar_t__ h_dport; int h_flags; int /*<<< orphan*/  h_len; int /*<<< orphan*/  h_sequence; } ;
struct rds_incoming {int /*<<< orphan*/  i_item; TYPE_1__ i_hdr; struct rds_connection* i_conn; int /*<<< orphan*/  i_rx_jiffies; } ;
struct rds_connection {scalar_t__ c_next_rx_seq; int /*<<< orphan*/  c_lcong; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum km_type { ____Placeholder_km_type } km_type ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int RDS_FLAG_RETRANSMITTED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rds_sock* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_incoming*) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_incoming*,struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct rds_sock*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sock* FUNC9 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct rds_connection*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ rds_sysctl_ping_enable ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  s_recv_drop_dead_sock ; 
 int /*<<< orphan*/  s_recv_drop_no_sock ; 
 int /*<<< orphan*/  s_recv_drop_old_seq ; 
 int /*<<< orphan*/  s_recv_ping ; 
 int /*<<< orphan*/  s_recv_queued ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC17(struct rds_connection *conn, __be32 saddr, __be32 daddr,
		       struct rds_incoming *inc, gfp_t gfp, enum km_type km)
{
	struct rds_sock *rs = NULL;
	struct sock *sk;
	unsigned long flags;

	inc->i_conn = conn;
	inc->i_rx_jiffies = jiffies;

	FUNC13("conn %p next %llu inc %p seq %llu len %u sport %u dport %u "
		 "flags 0x%x rx_jiffies %lu\n", conn,
		 (unsigned long long)conn->c_next_rx_seq,
		 inc,
		 (unsigned long long)FUNC3(inc->i_hdr.h_sequence),
		 FUNC2(inc->i_hdr.h_len),
		 FUNC1(inc->i_hdr.h_sport),
		 FUNC1(inc->i_hdr.h_dport),
		 inc->i_hdr.h_flags,
		 inc->i_rx_jiffies);

	/*
	 * Sequence numbers should only increase.  Messages get their
	 * sequence number as they're queued in a sending conn.  They
	 * can be dropped, though, if the sending socket is closed before
	 * they hit the wire.  So sequence numbers can skip forward
	 * under normal operation.  They can also drop back in the conn
	 * failover case as previously sent messages are resent down the
	 * new instance of a conn.  We drop those, otherwise we have
	 * to assume that the next valid seq does not come after a
	 * hole in the fragment stream.
	 *
	 * The headers don't give us a way to realize if fragments of
	 * a message have been dropped.  We assume that frags that arrive
	 * to a flow are part of the current message on the flow that is
	 * being reassembled.  This means that senders can't drop messages
	 * from the sending conn until all their frags are sent.
	 *
	 * XXX we could spend more on the wire to get more robust failure
	 * detection, arguably worth it to avoid data corruption.
	 */
	if (FUNC3(inc->i_hdr.h_sequence) < conn->c_next_rx_seq
	 && (inc->i_hdr.h_flags & RDS_FLAG_RETRANSMITTED)) {
		FUNC12(s_recv_drop_old_seq);
		goto out;
	}
	conn->c_next_rx_seq = FUNC3(inc->i_hdr.h_sequence) + 1;

	if (rds_sysctl_ping_enable && inc->i_hdr.h_dport == 0) {
		FUNC12(s_recv_ping);
		FUNC10(conn, inc->i_hdr.h_sport);
		goto out;
	}

	rs = FUNC5(daddr, inc->i_hdr.h_dport);
	if (!rs) {
		FUNC12(s_recv_drop_no_sock);
		goto out;
	}

	/* Process extension headers */
	FUNC7(inc, rs);

	/* We can be racing with rds_release() which marks the socket dead. */
	sk = FUNC9(rs);

	/* serialize with rds_release -> sock_orphan */
	FUNC15(&rs->rs_recv_lock, flags);
	if (!FUNC14(sk, SOCK_DEAD)) {
		FUNC13("adding inc %p to rs %p's recv queue\n", inc, rs);
		FUNC12(s_recv_queued);
		FUNC8(rs, sk, inc->i_conn->c_lcong,
				      FUNC2(inc->i_hdr.h_len),
				      inc->i_hdr.h_dport);
		FUNC6(inc);
		FUNC4(&inc->i_item, &rs->rs_recv_queue);
		FUNC0(sk);
	} else {
		FUNC12(s_recv_drop_dead_sock);
	}
	FUNC16(&rs->rs_recv_lock, flags);

out:
	if (rs)
		FUNC11(rs);
}