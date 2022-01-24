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
struct socket {int /*<<< orphan*/  sk; TYPE_1__* ops; } ;
struct rds_tcp_connection {int t_tinc_hdr_rem; scalar_t__ t_tinc_data_rem; TYPE_2__* t_tinc; struct socket* t_sock; } ;
struct rds_header {int dummy; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  ti_inc; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* shutdown ) (struct socket*,int) ;} ;

/* Variables and functions */
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rds_connection*,struct rds_tcp_connection*,struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int) ; 

void FUNC7(struct rds_connection *conn)
{
	struct rds_tcp_connection *tc = conn->c_transport_data;
	struct socket *sock = tc->t_sock;

	FUNC3("shutting down conn %p tc %p sock %p\n", conn, tc, sock);

	if (sock) {
		sock->ops->shutdown(sock, RCV_SHUTDOWN | SEND_SHUTDOWN);
		FUNC0(sock->sk);
		FUNC2(sock, tc); /* tc->tc_sock = NULL */

		FUNC4(sock->sk);
		FUNC5(sock);
	};

	if (tc->t_tinc) {
		FUNC1(&tc->t_tinc->ti_inc);
		tc->t_tinc = NULL;
	}
	tc->t_tinc_hdr_rem = sizeof(struct rds_header);
	tc->t_tinc_data_rem = 0;
}