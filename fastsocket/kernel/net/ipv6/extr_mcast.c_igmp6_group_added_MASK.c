#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; int /*<<< orphan*/  addr_len; } ;
struct ifmcaddr6 {int mca_flags; TYPE_1__* idev; int /*<<< orphan*/  mca_crcount; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mc_qrv; struct net_device* dev; } ;

/* Variables and functions */
 int IFF_UP ; 
 int MAF_LOADED ; 
 int MAF_NOREPORT ; 
 int MAX_ADDR_LEN ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ifmcaddr6 *mc)
{
	struct net_device *dev = mc->idev->dev;
	char buf[MAX_ADDR_LEN];

	FUNC5(&mc->mca_lock);
	if (!(mc->mca_flags&MAF_LOADED)) {
		mc->mca_flags |= MAF_LOADED;
		if (FUNC4(&mc->mca_addr, buf, dev, 0) == 0)
			FUNC1(dev, buf, dev->addr_len, 0);
	}
	FUNC6(&mc->mca_lock);

	if (!(dev->flags & IFF_UP) || (mc->mca_flags & MAF_NOREPORT))
		return;

	if (FUNC0(mc->idev)) {
		FUNC2(mc);
		return;
	}
	/* else v2 */

	mc->mca_crcount = mc->idev->mc_qrv;
	FUNC3(mc->idev);
}