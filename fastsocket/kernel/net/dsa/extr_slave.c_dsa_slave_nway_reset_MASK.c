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
struct net_device {int dummy; } ;
struct dsa_slave_priv {int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct dsa_slave_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	struct dsa_slave_priv *p = FUNC1(dev);

	if (p->phy != NULL)
		return FUNC0(p->phy);

	return -EOPNOTSUPP;
}