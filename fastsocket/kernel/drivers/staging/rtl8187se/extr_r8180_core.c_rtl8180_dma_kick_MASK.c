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
struct r8180_priv {int dma_poll_mask; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  EPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  TX_DMA_POLLING ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct net_device *dev, int priority)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC1(dev);

	FUNC2(dev,EPROM_CMD_CONFIG);
	FUNC3(dev, TX_DMA_POLLING,
			(1 << (priority + 1)) | priv->dma_poll_mask);
	FUNC2(dev,EPROM_CMD_NORMAL);

	FUNC0(dev);
}