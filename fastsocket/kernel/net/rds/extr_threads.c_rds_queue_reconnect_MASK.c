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
struct rds_connection {unsigned long c_reconnect_jiffies; int /*<<< orphan*/  c_conn_w; int /*<<< orphan*/  c_faddr; int /*<<< orphan*/  c_laddr; int /*<<< orphan*/  c_flags; } ;
typedef  int /*<<< orphan*/  rand ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_RECONNECT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  rds_sysctl_reconnect_max_jiffies ; 
 unsigned long rds_sysctl_reconnect_min_jiffies ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct rds_connection *conn)
{
	unsigned long rand;

	FUNC3("conn %p for %pI4 to %pI4 reconnect jiffies %lu\n",
	  conn, &conn->c_laddr, &conn->c_faddr,
	  conn->c_reconnect_jiffies);

	FUNC4(RDS_RECONNECT_PENDING, &conn->c_flags);
	if (conn->c_reconnect_jiffies == 0) {
		conn->c_reconnect_jiffies = rds_sysctl_reconnect_min_jiffies;
		FUNC2(rds_wq, &conn->c_conn_w, 0);
		return;
	}

	FUNC0(&rand, sizeof(rand));
	FUNC3("%lu delay %lu ceil conn %p for %pI4 -> %pI4\n",
		 rand % conn->c_reconnect_jiffies, conn->c_reconnect_jiffies,
		 conn, &conn->c_laddr, &conn->c_faddr);
	FUNC2(rds_wq, &conn->c_conn_w,
			   rand % conn->c_reconnect_jiffies);

	conn->c_reconnect_jiffies = FUNC1(conn->c_reconnect_jiffies * 2,
					rds_sysctl_reconnect_max_jiffies);
}