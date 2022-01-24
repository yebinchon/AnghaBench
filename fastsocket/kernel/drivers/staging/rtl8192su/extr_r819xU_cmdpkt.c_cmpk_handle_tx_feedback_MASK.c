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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  txfeedback; } ;
struct r8192_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  cmpk_txfb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static	void
FUNC3(
	struct net_device *dev,
	u8	*	pmsg)
{
	struct r8192_priv *priv = FUNC1(dev);
	cmpk_txfb_t		rx_tx_fb;	/* */

	priv->stats.txfeedback++;

	/* 0. Display received message. */
	//cmpk_Display_Message(CMPK_RX_TX_FB_SIZE, pMsg);

	/* 1. Extract TX feedback info from RFD to temp structure buffer. */

	/* 2007/07/05 MH Use pointer to transfer structure memory. */
	//memcpy((UINT8 *)&rx_tx_fb, pMsg, sizeof(CMPK_TXFB_T));
	FUNC2((u8*)&rx_tx_fb, pmsg, sizeof(cmpk_txfb_t));
	/* 2. Use tx feedback info to count TX statistics. */
	FUNC0(dev, &rx_tx_fb);

	/* 2007/01/17 MH Comment previous method for TX statistic function. */
	/* Collect info TX feedback packet to fill TCB. */
	/* We can not know the packet length and transmit type: broadcast or uni
	   or multicast. */
	//CountTxStatistics( pAdapter, &tcb );

}