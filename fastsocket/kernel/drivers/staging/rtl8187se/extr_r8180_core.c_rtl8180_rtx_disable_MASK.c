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
struct r8180_priv {int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  rx_skb_complete; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int CMD_RX_ENABLE_SHIFT ; 
 int CMD_TX_ENABLE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct r8180_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct net_device *dev)
{
	u8 cmd;
	struct r8180_priv *priv = FUNC2(dev);

	cmd=FUNC4(dev,CMD);
	FUNC5(dev, CMD, cmd &~ \
		       ((1<<CMD_RX_ENABLE_SHIFT)|(1<<CMD_TX_ENABLE_SHIFT)));
	FUNC1(dev);
	FUNC3(10);

	if(!priv->rx_skb_complete)
		FUNC0(priv->rx_skb);
}