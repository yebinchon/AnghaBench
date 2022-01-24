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
typedef  int u8 ;
struct r8192_priv {scalar_t__ card_8192; int /*<<< orphan*/ * rx_urb; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t MAX_RX_URB ; 
 int /*<<< orphan*/  MSR ; 
 int MSR_LINK_ADHOC ; 
 int MSR_LINK_MASK ; 
 int MSR_LINK_MASTER ; 
 int MSR_LINK_NONE ; 
 int MSR_LINK_SHIFT ; 
 scalar_t__ NIC_8192U ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct net_device *dev)
{
	u8 msr, msrm, msr2;
	struct r8192_priv *priv = FUNC0(dev);

	msr  = FUNC1(dev, MSR);
	msrm = msr & MSR_LINK_MASK;
	msr2 = msr & ~MSR_LINK_MASK;

	if(NIC_8192U == priv->card_8192) {
		FUNC2(priv->rx_urb[MAX_RX_URB]);
	}
	if ((msrm == (MSR_LINK_ADHOC<<MSR_LINK_SHIFT) ||
		(msrm == (MSR_LINK_MASTER<<MSR_LINK_SHIFT)))){
		FUNC3(dev, MSR, msr2 | MSR_LINK_NONE);
		FUNC3(dev, MSR, msr);
	}
}