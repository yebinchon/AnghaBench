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
 int /*<<< orphan*/  CAN_PROC_RCVLIST_ALL ; 
 int /*<<< orphan*/  CAN_PROC_RCVLIST_EFF ; 
 int /*<<< orphan*/  CAN_PROC_RCVLIST_ERR ; 
 int /*<<< orphan*/  CAN_PROC_RCVLIST_FIL ; 
 int /*<<< orphan*/  CAN_PROC_RCVLIST_INV ; 
 int /*<<< orphan*/  CAN_PROC_RCVLIST_SFF ; 
 int /*<<< orphan*/  CAN_PROC_RESET_STATS ; 
 int /*<<< orphan*/  CAN_PROC_STATS ; 
 int /*<<< orphan*/  CAN_PROC_VERSION ; 
 scalar_t__ can_dir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ pde_rcvlist_all ; 
 scalar_t__ pde_rcvlist_eff ; 
 scalar_t__ pde_rcvlist_err ; 
 scalar_t__ pde_rcvlist_fil ; 
 scalar_t__ pde_rcvlist_inv ; 
 scalar_t__ pde_rcvlist_sff ; 
 scalar_t__ pde_reset_stats ; 
 scalar_t__ pde_stats ; 
 scalar_t__ pde_version ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void FUNC2(void)
{
	if (pde_version)
		FUNC0(CAN_PROC_VERSION);

	if (pde_stats)
		FUNC0(CAN_PROC_STATS);

	if (pde_reset_stats)
		FUNC0(CAN_PROC_RESET_STATS);

	if (pde_rcvlist_err)
		FUNC0(CAN_PROC_RCVLIST_ERR);

	if (pde_rcvlist_all)
		FUNC0(CAN_PROC_RCVLIST_ALL);

	if (pde_rcvlist_fil)
		FUNC0(CAN_PROC_RCVLIST_FIL);

	if (pde_rcvlist_inv)
		FUNC0(CAN_PROC_RCVLIST_INV);

	if (pde_rcvlist_eff)
		FUNC0(CAN_PROC_RCVLIST_EFF);

	if (pde_rcvlist_sff)
		FUNC0(CAN_PROC_RCVLIST_SFF);

	if (can_dir)
		FUNC1(&init_net, "can");
}