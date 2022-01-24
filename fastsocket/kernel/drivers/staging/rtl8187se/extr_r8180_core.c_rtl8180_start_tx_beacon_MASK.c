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
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AtimWnd ; 
 int AtimWnd_AtimWnd ; 
 int /*<<< orphan*/  BintrItv ; 
 int BintrItv_BintrItv ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EPROM_CMD_NORMAL ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct net_device *dev)
{
	u16 word;

	FUNC0("Enabling beacon TX");
	FUNC4(dev);
	FUNC3(dev);
	FUNC2(dev);

	word = FUNC1(dev, AtimWnd) &~ AtimWnd_AtimWnd;
	FUNC7(dev, AtimWnd,word);// word |=

	word  = FUNC1(dev, BintrItv);
	word &= ~BintrItv_BintrItv;
	word |= 1000;/*priv->ieee80211->current_network.beacon_interval *
		((priv->txbeaconcount > 1)?(priv->txbeaconcount-1):1);
	// FIXME: check if correct ^^ worked with 0x3e8;
	*/
	FUNC7(dev, BintrItv, word);

	FUNC5(dev, EPROM_CMD_NORMAL);

        FUNC6(dev);
}