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
 scalar_t__ RPCROUTER_MAX_REMOTE_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_rpcrouter_class ; 
 int /*<<< orphan*/  msm_rpcrouter_devno ; 
 int /*<<< orphan*/  rpcrouter_cdev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(void)
{
	FUNC0(&rpcrouter_cdev);
	FUNC2(msm_rpcrouter_class, msm_rpcrouter_devno);
	FUNC3(msm_rpcrouter_devno,
				 RPCROUTER_MAX_REMOTE_SERVERS + 1);
	FUNC1(msm_rpcrouter_class);
}