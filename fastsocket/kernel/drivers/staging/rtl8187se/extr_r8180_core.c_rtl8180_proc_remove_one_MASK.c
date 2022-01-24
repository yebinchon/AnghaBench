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
struct r8180_priv {int /*<<< orphan*/ * dir_dev; } ;
struct net_device {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * rtl8180_proc ; 

void FUNC2(struct net_device *dev)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC0(dev);
	if (priv->dir_dev) {
		FUNC1("stats-hw", priv->dir_dev);
		FUNC1("stats-tx", priv->dir_dev);
		FUNC1("stats-rx", priv->dir_dev);
		FUNC1("registers", priv->dir_dev);
		FUNC1(dev->name, rtl8180_proc);
		priv->dir_dev = NULL;
	}
}