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
struct r8192_priv {int /*<<< orphan*/ * dir_dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * rtl8192_proc ; 

void FUNC2(struct net_device *dev)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC0(dev);


	if (priv->dir_dev) {
	//	remove_proc_entry("stats-hw", priv->dir_dev);
		FUNC1("stats-tx", priv->dir_dev);
		FUNC1("stats-rx", priv->dir_dev);
	//	remove_proc_entry("stats-ieee", priv->dir_dev);
		FUNC1("stats-ap", priv->dir_dev);
		FUNC1("registers", priv->dir_dev);
		FUNC1("registers-1", priv->dir_dev);
		FUNC1("registers-2", priv->dir_dev);
		FUNC1("registers-8", priv->dir_dev);
		FUNC1("registers-9", priv->dir_dev);
		FUNC1("registers-a", priv->dir_dev);
		FUNC1("registers-b", priv->dir_dev);
		FUNC1("registers-c", priv->dir_dev);
		FUNC1("registers-d", priv->dir_dev);
		FUNC1("registers-e", priv->dir_dev);
	//	remove_proc_entry("cck-registers",priv->dir_dev);
	//	remove_proc_entry("ofdm-registers",priv->dir_dev);
		//remove_proc_entry(dev->name, rtl8192_proc);
		FUNC1("wlan0", rtl8192_proc);
		priv->dir_dev = NULL;
	}
}