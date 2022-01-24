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
struct r8180_priv {int /*<<< orphan*/  ps_lock; int /*<<< orphan*/  (* rf_wakeup ) (struct net_device*) ;} ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG4 ; 
 int CONFIG4_PWRMGT ; 
 struct r8180_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct net_device *dev)
{
	unsigned long flags;
	struct r8180_priv *priv = FUNC0(dev);

	FUNC2(&priv->ps_lock,flags);
	FUNC5(dev,CONFIG4,FUNC1(dev,CONFIG4)&~CONFIG4_PWRMGT);
	if (priv->rf_wakeup)
		priv->rf_wakeup(dev);
	FUNC3(&priv->ps_lock,flags);
}