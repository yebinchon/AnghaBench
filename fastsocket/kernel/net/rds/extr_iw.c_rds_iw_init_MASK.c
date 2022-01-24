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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDS_INFO_IWARP_CONNECTIONS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_iw_client ; 
 int /*<<< orphan*/  rds_iw_devices ; 
 int /*<<< orphan*/  rds_iw_ic_info ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  rds_iw_transport ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(void)
{
	int ret;

	FUNC0(&rds_iw_devices);

	ret = FUNC1(&rds_iw_client);
	if (ret)
		goto out;

	ret = FUNC7();
	if (ret)
		goto out_ibreg;

	ret = FUNC5();
	if (ret)
		goto out_sysctl;

	ret = FUNC8(&rds_iw_transport);
	if (ret)
		goto out_recv;

	FUNC3(RDS_INFO_IWARP_CONNECTIONS, rds_iw_ic_info);

	goto out;

out_recv:
	FUNC4();
out_sysctl:
	FUNC6();
out_ibreg:
	FUNC2(&rds_iw_client);
out:
	return ret;
}