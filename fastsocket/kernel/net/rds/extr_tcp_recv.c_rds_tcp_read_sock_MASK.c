#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {int /*<<< orphan*/  sk; } ;
struct rds_tcp_desc_arg {int km; int /*<<< orphan*/  gfp; struct rds_connection* conn; } ;
struct rds_tcp_connection {struct socket* t_sock; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;
struct TYPE_4__ {struct rds_tcp_desc_arg* data; } ;
struct TYPE_5__ {int error; int count; TYPE_1__ arg; } ;
typedef  TYPE_2__ read_descriptor_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum km_type { ____Placeholder_km_type } km_type ;

/* Variables and functions */
 int /*<<< orphan*/  rds_tcp_data_recv ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rds_tcp_connection*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rds_connection *conn, gfp_t gfp,
			     enum km_type km)
{
	struct rds_tcp_connection *tc = conn->c_transport_data;
	struct socket *sock = tc->t_sock;
	read_descriptor_t desc;
	struct rds_tcp_desc_arg arg;

	/* It's like glib in the kernel! */
	arg.conn = conn;
	arg.gfp = gfp;
	arg.km = km;
	desc.arg.data = &arg;
	desc.error = 0;
	desc.count = 1; /* give more than one skb per call */

	FUNC1(sock->sk, &desc, rds_tcp_data_recv);
	FUNC0("tcp_read_sock for tc %p gfp 0x%x returned %d\n", tc, gfp,
		 desc.error);

	return desc.error;
}