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
typedef  int u8 ;
struct r8192_priv {int /*<<< orphan*/  skb_queue; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * skb_aggQ; int /*<<< orphan*/ * skb_waitQ; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDR ; 
 int CR_RE ; 
 int CR_TE ; 
 int MAX_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct net_device *dev)
{
	u8 cmd;
	struct r8192_priv *priv = FUNC1(dev);
        int i;

	cmd=FUNC3(dev,CMDR);
//	if(!priv->ieee80211->bSupportRemoteWakeUp) {
		FUNC5(dev, CMDR, cmd &~ \
				(CR_TE|CR_RE));
//	}
	FUNC0(dev);
	FUNC2(30);

        for(i = 0; i < MAX_QUEUE_SIZE; i++) {
                FUNC4(&priv->ieee80211->skb_waitQ [i]);
        }
        for(i = 0; i < MAX_QUEUE_SIZE; i++) {
                FUNC4(&priv->ieee80211->skb_aggQ [i]);
        }


	FUNC4(&priv->skb_queue);
	return;
}