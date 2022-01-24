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
struct r8192_priv {short promisc; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 

__attribute__((used)) static void FUNC1(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC0(dev);
	short promisc;

	//down(&priv->wx_sem);

	/* FIXME FIXME */

	promisc = (dev->flags & IFF_PROMISC) ? 1:0;

	if (promisc != priv->promisc) {
		;
	//	rtl8192_commit(dev);
	}

	priv->promisc = promisc;

	//schedule_work(&priv->reset_wq);
	//up(&priv->wx_sem);
}