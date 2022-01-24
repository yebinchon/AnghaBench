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
struct rds_connection {int /*<<< orphan*/  c_conn_w; int /*<<< orphan*/  c_flags; } ;

/* Variables and functions */
 scalar_t__ RDS_CONN_DOWN ; 
 int /*<<< orphan*/  RDS_RECONNECT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rds_connection*) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct rds_connection *conn)
{
	if (FUNC1(conn) == RDS_CONN_DOWN &&
	    !FUNC2(RDS_RECONNECT_PENDING, &conn->c_flags))
		FUNC0(rds_wq, &conn->c_conn_w, 0);
}