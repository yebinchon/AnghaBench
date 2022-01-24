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
struct r8180_priv {int /*<<< orphan*/  ps_lock; int /*<<< orphan*/  (* rf_sleep ) (struct net_device*) ;} ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct r8180_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev)
{
        unsigned long flags;
        struct r8180_priv *priv = FUNC0(dev);

        FUNC1(&priv->ps_lock,flags);
        if(priv->rf_sleep)
                priv->rf_sleep(dev);
        FUNC2(&priv->ps_lock,flags);
}