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
typedef  int u32 ;
struct r8180_priv {int retry_data; int retry_rts; scalar_t__ hw_plcp_len; scalar_t__ card_8185; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int CMD ; 
 int CMD_TX_ENABLE_SHIFT ; 
 int CW_CONF ; 
 int CW_CONF_PERPACKET_CW_SHIFT ; 
 int CW_CONF_PERPACKET_RETRY_SHIFT ; 
 int TCR_CWMIN ; 
 int TCR_DISCW ; 
 int TCR_DPRETRY_MASK ; 
 int TCR_MXDMA_2048 ; 
 int TCR_MXDMA_MASK ; 
 int TCR_MXDMA_SHIFT ; 
 int TCR_PLCP_LEN ; 
 int TCR_PROBE_NOTIMESTAMP_SHIFT ; 
 int TCR_RTSRETRY_MASK ; 
 int TCR_SAT ; 
 int TX_AGC_CTL ; 
 int TX_AGC_CTL_FEEDBACK_ANT ; 
 int TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT ; 
 int TX_AGC_CTL_PERPACKET_GAIN_SHIFT ; 
 int /*<<< orphan*/  TX_CONF ; 
 int TX_CONF_HEADER_AUTOICREMENT_SHIFT ; 
 int TX_DPRETRY_SHIFT ; 
 int TX_LOOPBACK_MASK ; 
 int TX_LOOPBACK_NONE ; 
 int TX_LOOPBACK_SHIFT ; 
 int TX_NOCRC_SHIFT ; 
 int TX_NOICV_SHIFT ; 
 int TX_RTSRETRY_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ hwseqnum ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct net_device *dev)
{
	u8 cmd;
	u8 tx_agc_ctl;
	u8 byte;
	u32 txconf;
	struct r8180_priv *priv = (struct r8180_priv *)FUNC1(dev);

	txconf = FUNC3(dev, TX_CONF);

	if (priv->card_8185) {
		byte = FUNC2(dev,CW_CONF);
		byte &= ~(1<<CW_CONF_PERPACKET_CW_SHIFT);
		byte &= ~(1<<CW_CONF_PERPACKET_RETRY_SHIFT);
		FUNC4(dev, CW_CONF, byte);

		tx_agc_ctl = FUNC2(dev, TX_AGC_CTL);
		tx_agc_ctl &= ~(1<<TX_AGC_CTL_PERPACKET_GAIN_SHIFT);
		tx_agc_ctl &= ~(1<<TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT);
		tx_agc_ctl |=(1<<TX_AGC_CTL_FEEDBACK_ANT);
		FUNC4(dev, TX_AGC_CTL, tx_agc_ctl);
		FUNC4(dev, 0xec, 0x3f); /* Disable early TX */
	}

	if (priv->card_8185)
		txconf = txconf &~ (1<<TCR_PROBE_NOTIMESTAMP_SHIFT);
	else {
		if(hwseqnum)
			txconf= txconf &~ (1<<TX_CONF_HEADER_AUTOICREMENT_SHIFT);
		else
			txconf= txconf | (1<<TX_CONF_HEADER_AUTOICREMENT_SHIFT);
	}

	txconf = txconf &~ TX_LOOPBACK_MASK;
	txconf = txconf | (TX_LOOPBACK_NONE <<TX_LOOPBACK_SHIFT);
	txconf = txconf &~ TCR_DPRETRY_MASK;
	txconf = txconf &~ TCR_RTSRETRY_MASK;
	txconf = txconf | (priv->retry_data<<TX_DPRETRY_SHIFT);
	txconf = txconf | (priv->retry_rts<<TX_RTSRETRY_SHIFT);
	txconf = txconf &~ (1<<TX_NOCRC_SHIFT);

	if (priv->card_8185) {
		if (priv->hw_plcp_len)
			txconf = txconf &~ TCR_PLCP_LEN;
		else
			txconf = txconf | TCR_PLCP_LEN;
	} else
		txconf = txconf &~ TCR_SAT;

	txconf = txconf &~ TCR_MXDMA_MASK;
	txconf = txconf | (TCR_MXDMA_2048<<TCR_MXDMA_SHIFT);
	txconf = txconf | TCR_CWMIN;
	txconf = txconf | TCR_DISCW;

	txconf = txconf | (1 << TX_NOICV_SHIFT);

	FUNC5(dev,TX_CONF,txconf);

	FUNC0(dev);

	cmd=FUNC2(dev,CMD);
	FUNC4(dev,CMD,cmd | (1<<CMD_TX_ENABLE_SHIFT));

	FUNC5(dev,TX_CONF,txconf);
}