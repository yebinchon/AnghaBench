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
struct r8192_priv {scalar_t__ ChannelPlan; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 scalar_t__ COUNTRY_CODE_GLOBAL_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct r8192_priv*) ; 

short FUNC4(struct net_device * dev)
{
	struct r8192_priv *priv = FUNC1(dev);
	if(priv->ChannelPlan > COUNTRY_CODE_GLOBAL_DOMAIN){
		FUNC2("rtl8180_init:Error channel plan! Set to default.\n");
		priv->ChannelPlan= 0;
	}
	FUNC0(COMP_INIT, "Channel plan is %d\n",priv->ChannelPlan);

	FUNC3(priv->ChannelPlan, priv);
	return 0;
}