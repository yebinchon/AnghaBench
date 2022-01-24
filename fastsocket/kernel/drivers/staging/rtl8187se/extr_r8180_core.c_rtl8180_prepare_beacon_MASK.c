#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct r8180_priv {TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  beacon_interval; } ;
struct TYPE_4__ {int /*<<< orphan*/  basic_rate; TYPE_1__ current_network; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEACON_PRIORITY ; 
 int /*<<< orphan*/  BcnItv ; 
 int /*<<< orphan*/  BcnItv_BcnItv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct net_device *dev)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC3(dev);
	struct sk_buff *skb;

	u16 word  = FUNC5(dev, BcnItv);
	word &= ~BcnItv_BcnItv; // clear Bcn_Itv
	word |= FUNC0(priv->ieee80211->current_network.beacon_interval);//0x64;
	FUNC7(dev, BcnItv, word);

	skb = FUNC2(priv->ieee80211);
	if(skb){
		FUNC6(dev,skb->data,skb->len,BEACON_PRIORITY,
			0,0,FUNC4(priv->ieee80211->basic_rate));
		FUNC1(skb);
	}
}