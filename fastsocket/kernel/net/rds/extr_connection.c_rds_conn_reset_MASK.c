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
struct rds_connection {scalar_t__ c_flags; int /*<<< orphan*/  c_faddr; int /*<<< orphan*/  c_laddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_conn_reset ; 

__attribute__((used)) static void FUNC3(struct rds_connection *conn)
{
	FUNC2("connection %pI4 to %pI4 reset\n",
	  &conn->c_laddr, &conn->c_faddr);

	FUNC1(s_conn_reset);
	FUNC0(conn);
	conn->c_flags = 0;

	/* Do not clear next_rx_seq here, else we cannot distinguish
	 * retransmitted packets from new packets, and will hand all
	 * of them to the application. That is not consistent with the
	 * reliability guarantees of RDS. */
}