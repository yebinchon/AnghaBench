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
struct inet6_dev {int /*<<< orphan*/  lock; scalar_t__ mc_v1_seen; int /*<<< orphan*/  mc_maxdelay; int /*<<< orphan*/  mc_qrv; int /*<<< orphan*/  mc_ifc_timer; scalar_t__ mc_ifc_count; int /*<<< orphan*/ * mc_tomb; int /*<<< orphan*/  mc_gq_timer; scalar_t__ mc_gq_running; int /*<<< orphan*/  mc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGMP6_UNSOLICITED_IVAL ; 
 int /*<<< orphan*/  MLD_QRV_DEFAULT ; 
 int /*<<< orphan*/  mld_gq_timer_expire ; 
 int /*<<< orphan*/  mld_ifc_timer_expire ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inet6_dev *idev)
{
	FUNC2(&idev->lock);
	FUNC0(&idev->mc_lock);
	idev->mc_gq_running = 0;
	FUNC1(&idev->mc_gq_timer, mld_gq_timer_expire,
			(unsigned long)idev);
	idev->mc_tomb = NULL;
	idev->mc_ifc_count = 0;
	FUNC1(&idev->mc_ifc_timer, mld_ifc_timer_expire,
			(unsigned long)idev);
	idev->mc_qrv = MLD_QRV_DEFAULT;
	idev->mc_maxdelay = IGMP6_UNSOLICITED_IVAL;
	idev->mc_v1_seen = 0;
	FUNC3(&idev->lock);
}