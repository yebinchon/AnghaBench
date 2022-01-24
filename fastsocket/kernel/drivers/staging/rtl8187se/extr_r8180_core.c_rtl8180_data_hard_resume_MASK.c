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
struct r8180_priv {int /*<<< orphan*/  dma_poll_stop_mask; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  EPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  TPPOLLSTOP_AC_VIQ ; 
 int /*<<< orphan*/  TPPollStop ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct net_device *dev)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC0(dev);

	FUNC1(dev,EPROM_CMD_CONFIG);
	priv->dma_poll_stop_mask &= ~(TPPOLLSTOP_AC_VIQ);
	FUNC2(dev,TPPollStop, priv->dma_poll_stop_mask);
	FUNC1(dev,EPROM_CMD_NORMAL);
}