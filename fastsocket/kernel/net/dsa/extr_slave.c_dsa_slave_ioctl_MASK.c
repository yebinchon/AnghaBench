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
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;
struct dsa_slave_priv {int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct mii_ioctl_data* FUNC0 (struct ifreq*) ; 
 struct dsa_slave_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct dsa_slave_priv *p = FUNC1(dev);
	struct mii_ioctl_data *mii_data = FUNC0(ifr);

	if (p->phy != NULL)
		return FUNC2(p->phy, mii_data, cmd);

	return -EOPNOTSUPP;
}