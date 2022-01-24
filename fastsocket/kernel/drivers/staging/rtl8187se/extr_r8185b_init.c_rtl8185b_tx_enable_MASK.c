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
struct r8180_priv {int /*<<< orphan*/  TransmitConfig; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int CMD_TX_ENABLE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR ; 
 int MSR_LINK_ENEDCA ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct net_device *dev)
{
	u8 cmd;
	//u8 tx_agc_ctl;
	u8 byte;
	//u32 txconf;
	struct r8180_priv *priv = (struct r8180_priv *)FUNC2(dev);

	FUNC6(dev, TCR, priv->TransmitConfig);
	byte = FUNC3(dev, MSR);
	byte |= MSR_LINK_ENEDCA;
	FUNC5(dev, MSR, byte);

	FUNC1(dev);

#ifdef DEBUG_TX
	DMESG("txconf: %x %x",priv->TransmitConfig,read_nic_dword(dev,TCR));
#endif

	cmd=FUNC3(dev,CMD);
	FUNC5(dev,CMD,cmd | (1<<CMD_TX_ENABLE_SHIFT));

	//write_nic_dword(dev,TX_CONF,txconf);


/*
	rtl8180_set_mode(dev,EPROM_CMD_CONFIG);
	write_nic_byte(dev, TX_DMA_POLLING, priv->dma_poll_mask);
	rtl8180_set_mode(dev,EPROM_CMD_NORMAL);
	*/
}