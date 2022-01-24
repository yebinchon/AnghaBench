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
 int /*<<< orphan*/  RDS_INFO_IB_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rds_ib_ic_info ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  rds_ib_transport ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	FUNC4(RDS_INFO_IB_CONNECTIONS, rds_ib_ic_info);
	FUNC3();
	FUNC0();
	FUNC2();
	FUNC1();
	FUNC5(&rds_ib_transport);
}