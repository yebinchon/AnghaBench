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
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int,unsigned int*) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 int /*<<< orphan*/  mdio_sem ; 
 struct octeon_ethernet* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct octeon_ethernet *priv = FUNC3(dev);
	struct mii_ioctl_data *data = FUNC2(rq);
	unsigned int duplex_chg;
	int ret;

	FUNC0(&mdio_sem);
	ret = FUNC1(&priv->mii_info, data, cmd, &duplex_chg);
	FUNC4(&mdio_sem);

	return ret;
}