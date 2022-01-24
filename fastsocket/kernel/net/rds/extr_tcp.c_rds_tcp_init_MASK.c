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
struct rds_tcp_connection {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RDS_INFO_TCP_SOCKETS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_tcp_conn_slab ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  rds_tcp_tc_info ; 
 int /*<<< orphan*/  rds_tcp_transport ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void)
{
	int ret;

	rds_tcp_conn_slab = FUNC0("rds_tcp_connection",
					      sizeof(struct rds_tcp_connection),
					      0, 0, NULL);
	if (!rds_tcp_conn_slab) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC5();
	if (ret)
		goto out_slab;

	ret = FUNC6(&rds_tcp_transport);
	if (ret)
		goto out_recv;

	ret = FUNC3();
	if (ret)
		goto out_register;

	FUNC2(RDS_INFO_TCP_SOCKETS, rds_tcp_tc_info);

	goto out;

out_register:
	FUNC7(&rds_tcp_transport);
out_recv:
	FUNC4();
out_slab:
	FUNC1(rds_tcp_conn_slab);
out:
	return ret;
}