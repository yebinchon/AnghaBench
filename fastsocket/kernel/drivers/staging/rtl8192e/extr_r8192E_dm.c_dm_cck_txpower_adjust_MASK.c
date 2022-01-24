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
struct r8192_priv {scalar_t__ IC_Cut; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IC_VersionCut_D ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *dev, bool binch14)
{	// dm_CCKTxPowerAdjust
#ifndef RTL8190P
	struct r8192_priv *priv = FUNC2(dev);
#endif
#ifdef RTL8190P
	dm_CCKTxPowerAdjust_TSSI(dev, binch14);
#else
	//if(priv->bDcut == TRUE)
	if(priv->IC_Cut >= IC_VersionCut_D)
		FUNC0(dev, binch14);
	else
		FUNC1(dev, binch14);
#endif
}