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
struct rds_ib_connection {int dummy; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rds_connection*) ; 

int FUNC3(struct rds_connection *conn)
{
	struct rds_ib_connection *ic = conn->c_transport_data;
	int ret = 0;

	FUNC2("conn %p\n", conn);
	if (FUNC0(conn))
		FUNC1(ic);

	return ret;
}