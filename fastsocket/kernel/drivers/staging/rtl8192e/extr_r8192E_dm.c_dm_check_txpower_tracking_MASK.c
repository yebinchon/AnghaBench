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
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
#ifndef RTL8190P
	struct r8192_priv *priv = FUNC2(dev);
	//static u32 tx_power_track_counter = 0;
#endif
#ifdef  RTL8190P
	dm_CheckTXPowerTracking_TSSI(dev);
#else
	//if(priv->bDcut == TRUE)
	if(priv->IC_Cut >= IC_VersionCut_D)
		FUNC0(dev);
	else
		FUNC1(dev);
#endif

}