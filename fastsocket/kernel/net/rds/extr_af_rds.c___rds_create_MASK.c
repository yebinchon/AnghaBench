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
struct socket {int /*<<< orphan*/ * ops; } ;
struct sock {int sk_protocol; } ;
struct rds_sock {int /*<<< orphan*/  rs_item; int /*<<< orphan*/  rs_rdma_keys; int /*<<< orphan*/  rs_rdma_lock; int /*<<< orphan*/  rs_cong_list; int /*<<< orphan*/  rs_notify_queue; int /*<<< orphan*/  rs_recv_queue; int /*<<< orphan*/  rs_send_queue; int /*<<< orphan*/  rs_recv_lock; int /*<<< orphan*/  rs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_proto_ops ; 
 struct rds_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  rds_sock_count ; 
 int /*<<< orphan*/  rds_sock_list ; 
 int /*<<< orphan*/  rds_sock_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, struct sock *sk, int protocol)
{
	struct rds_sock *rs;

	FUNC4(sock, sk);
	sock->ops		= &rds_proto_ops;
	sk->sk_protocol		= protocol;

	rs = FUNC2(sk);
	FUNC6(&rs->rs_lock);
	FUNC3(&rs->rs_recv_lock);
	FUNC0(&rs->rs_send_queue);
	FUNC0(&rs->rs_recv_queue);
	FUNC0(&rs->rs_notify_queue);
	FUNC0(&rs->rs_cong_list);
	FUNC6(&rs->rs_rdma_lock);
	rs->rs_rdma_keys = RB_ROOT;

	FUNC5(&rds_sock_lock);
	FUNC1(&rs->rs_item, &rds_sock_list);
	rds_sock_count++;
	FUNC7(&rds_sock_lock);

	return 0;
}