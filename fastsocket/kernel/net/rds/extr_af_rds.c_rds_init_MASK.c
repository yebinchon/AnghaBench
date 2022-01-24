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

/* Variables and functions */
 int /*<<< orphan*/  RDS_INFO_RECV_MESSAGES ; 
 int /*<<< orphan*/  RDS_INFO_SOCKETS ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  rds_family_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  rds_proto ; 
 int /*<<< orphan*/  rds_sock_inc_info ; 
 int /*<<< orphan*/  rds_sock_info ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(void)
{
	int ret;

	ret = FUNC4();
	if (ret)
		goto out;
	ret = FUNC12();
	if (ret)
		goto out_conn;
	ret = FUNC10();
	if (ret)
		goto out_threads;
	ret = FUNC8();
	if (ret)
		goto out_sysctl;
	ret = FUNC0(&rds_proto, 1);
	if (ret)
		goto out_stats;
	ret = FUNC13(&rds_family_ops);
	if (ret)
		goto out_proto;

	FUNC5(RDS_INFO_SOCKETS, rds_sock_info);
	FUNC5(RDS_INFO_RECV_MESSAGES, rds_sock_inc_info);

	goto out;

out_proto:
	FUNC1(&rds_proto);
out_stats:
	FUNC7();
out_sysctl:
	FUNC9();
out_threads:
	FUNC11();
out_conn:
	FUNC3();
	FUNC2();
	FUNC6();
out:
	return ret;
}