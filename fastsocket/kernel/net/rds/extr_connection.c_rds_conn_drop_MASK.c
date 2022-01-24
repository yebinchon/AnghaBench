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
struct rds_connection {int /*<<< orphan*/  c_down_w; int /*<<< orphan*/  c_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_CONN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_wq ; 

void FUNC2(struct rds_connection *conn)
{
	FUNC0(&conn->c_state, RDS_CONN_ERROR);
	FUNC1(rds_wq, &conn->c_down_w);
}