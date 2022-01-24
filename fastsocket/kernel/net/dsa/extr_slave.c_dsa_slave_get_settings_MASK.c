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
struct ethtool_cmd {int dummy; } ;
struct dsa_slave_priv {int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct dsa_slave_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct dsa_slave_priv *p = FUNC0(dev);
	int err;

	err = -EOPNOTSUPP;
	if (p->phy != NULL) {
		err = FUNC2(p->phy);
		if (err == 0)
			err = FUNC1(p->phy, cmd);
	}

	return err;
}