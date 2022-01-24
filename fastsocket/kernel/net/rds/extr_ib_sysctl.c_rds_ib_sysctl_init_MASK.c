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
 int ENOMEM ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  rds_ib_sysctl_hdr ; 
 int /*<<< orphan*/  rds_ib_sysctl_path ; 
 int /*<<< orphan*/  rds_ib_sysctl_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
	rds_ib_sysctl_hdr = FUNC0(&init_net, rds_ib_sysctl_path, rds_ib_sysctl_table);
	if (!rds_ib_sysctl_hdr)
		return -ENOMEM;
	return 0;
}