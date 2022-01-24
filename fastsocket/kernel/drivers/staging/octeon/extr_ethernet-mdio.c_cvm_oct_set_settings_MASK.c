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
struct octeon_ethernet {int /*<<< orphan*/  mii_info; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mdio_sem ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 struct octeon_ethernet* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct octeon_ethernet *priv = FUNC2(dev);
	int ret;

	FUNC0(&mdio_sem);
	ret = FUNC1(&priv->mii_info, cmd);
	FUNC3(&mdio_sem);

	return ret;
}