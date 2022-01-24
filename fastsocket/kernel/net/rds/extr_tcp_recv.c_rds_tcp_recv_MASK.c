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
struct socket {int /*<<< orphan*/  sk; } ;
struct rds_tcp_connection {struct socket* t_sock; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rds_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rds_connection*,struct rds_tcp_connection*,struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct rds_connection *conn)
{
	struct rds_tcp_connection *tc = conn->c_transport_data;
	struct socket *sock = tc->t_sock;
	int ret = 0;

	FUNC2("recv worker conn %p tc %p sock %p\n", conn, tc, sock);

	FUNC0(sock->sk);
	ret = FUNC1(conn, GFP_KERNEL, KM_USER0);
	FUNC3(sock->sk);

	return ret;
}