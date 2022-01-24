#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ eRFPowerState; } ;
typedef  scalar_t__ RT_RF_POWER_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,scalar_t__) ; 

bool FUNC3(struct net_device* dev, RT_RF_POWER_STATE eRFPowerState)
{
	struct r8192_priv *priv = FUNC1(dev);
	bool			bResult = FALSE;

	FUNC0(COMP_RF, "---------> PHY_SetRFPowerState(): eRFPowerState(%d)\n", eRFPowerState);

	if(eRFPowerState == priv->ieee80211->eRFPowerState)
	{
		FUNC0(COMP_RF, "<--------- PHY_SetRFPowerState(): discard the request for eRFPowerState(%d) is the same.\n", eRFPowerState);
		return bResult;
	}

	bResult = FUNC2(dev, eRFPowerState);

	FUNC0(COMP_RF, "<--------- PHY_SetRFPowerState(): bResult(%d)\n", bResult);

	return bResult;
}