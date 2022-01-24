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
struct rds_iw_connection {int /*<<< orphan*/  i_recv_mutex; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_iw_connection*) ; 
 scalar_t__ FUNC4 (struct rds_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct rds_connection*) ; 
 int /*<<< orphan*/  s_iw_rx_refill_from_thread ; 

int FUNC7(struct rds_connection *conn)
{
	struct rds_iw_connection *ic = conn->c_transport_data;
	int ret = 0;

	FUNC6("conn %p\n", conn);

	/*
	 * If we get a temporary posting failure in this context then
	 * we're really low and we want the caller to back off for a bit.
	 */
	FUNC0(&ic->i_recv_mutex);
	if (FUNC4(conn, GFP_KERNEL, GFP_HIGHUSER, 0))
		ret = -ENOMEM;
	else
		FUNC5(s_iw_rx_refill_from_thread);
	FUNC1(&ic->i_recv_mutex);

	if (FUNC2(conn))
		FUNC3(ic);

	return ret;
}