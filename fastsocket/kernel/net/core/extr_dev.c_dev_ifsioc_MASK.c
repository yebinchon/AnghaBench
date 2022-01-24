#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device_ops {int (* ndo_set_config ) (struct net_device*,int /*<<< orphan*/ *) ;int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,unsigned int) ;int /*<<< orphan*/  ndo_set_rx_mode; int /*<<< orphan*/  ndo_set_multicast_list; } ;
struct net_device {int /*<<< orphan*/  tx_queue_len; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  type; struct net_device_ops* netdev_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct ifreq {char* ifr_newname; int /*<<< orphan*/  ifr_qlen; TYPE_1__ ifr_hwaddr; int /*<<< orphan*/  ifr_map; int /*<<< orphan*/  ifr_mtu; int /*<<< orphan*/  ifr_flags; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
#define  SIOCADDMULTI 138 
 unsigned int SIOCBONDCHANGEACTIVE ; 
 unsigned int SIOCBONDENSLAVE ; 
 unsigned int SIOCBONDINFOQUERY ; 
 unsigned int SIOCBONDRELEASE ; 
 unsigned int SIOCBONDSETHWADDR ; 
 unsigned int SIOCBONDSLAVEINFOQUERY ; 
 unsigned int SIOCBRADDIF ; 
 unsigned int SIOCBRDELIF ; 
#define  SIOCDELMULTI 137 
 unsigned int SIOCDEVPRIVATE ; 
 unsigned int SIOCGMIIPHY ; 
 unsigned int SIOCGMIIREG ; 
#define  SIOCSHWTSTAMP 136 
#define  SIOCSIFFLAGS 135 
#define  SIOCSIFHWADDR 134 
#define  SIOCSIFHWBROADCAST 133 
#define  SIOCSIFMAP 132 
#define  SIOCSIFMETRIC 131 
#define  SIOCSIFMTU 130 
#define  SIOCSIFNAME 129 
#define  SIOCSIFTXQLEN 128 
 unsigned int SIOCSMIIREG ; 
 unsigned int SIOCWANDEV ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,char*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct net_device*,TYPE_1__*) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,size_t) ; 
 int FUNC10 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct net_device*,struct ifreq*,unsigned int) ; 

__attribute__((used)) static int FUNC14(struct net *net, struct ifreq *ifr, unsigned int cmd)
{
	int err;
	struct net_device *dev = FUNC0(net, ifr->ifr_name);
	const struct net_device_ops *ops;

	if (!dev)
		return -ENODEV;

	ops = dev->netdev_ops;

	switch (cmd) {
	case SIOCSIFFLAGS:	/* Set interface flags */
		return FUNC2(dev, ifr->ifr_flags);

	case SIOCSIFMETRIC:	/* Set the metric on the interface
				   (currently unused) */
		return -EOPNOTSUPP;

	case SIOCSIFMTU:	/* Set the MTU of a device */
		return FUNC7(dev, ifr->ifr_mtu);

	case SIOCSIFHWADDR:
		return FUNC6(dev, &ifr->ifr_hwaddr);

	case SIOCSIFHWBROADCAST:
		if (ifr->ifr_hwaddr.sa_family != dev->type)
			return -EINVAL;
		FUNC8(dev->broadcast, ifr->ifr_hwaddr.sa_data,
		       FUNC9(sizeof ifr->ifr_hwaddr.sa_data, (size_t) dev->addr_len));
		FUNC1(NETDEV_CHANGEADDR, dev);
		return 0;

	case SIOCSIFMAP:
		if (ops->ndo_set_config) {
			if (!FUNC11(dev))
				return -ENODEV;
			return ops->ndo_set_config(dev, &ifr->ifr_map);
		}
		return -EOPNOTSUPP;

	case SIOCADDMULTI:
		if ((!ops->ndo_set_multicast_list && !ops->ndo_set_rx_mode) ||
		    ifr->ifr_hwaddr.sa_family != AF_UNSPEC)
			return -EINVAL;
		if (!FUNC11(dev))
			return -ENODEV;
		return FUNC4(dev, ifr->ifr_hwaddr.sa_data,
				  dev->addr_len, 1);

	case SIOCDELMULTI:
		if ((!ops->ndo_set_multicast_list && !ops->ndo_set_rx_mode) ||
		    ifr->ifr_hwaddr.sa_family != AF_UNSPEC)
			return -EINVAL;
		if (!FUNC11(dev))
			return -ENODEV;
		return FUNC5(dev, ifr->ifr_hwaddr.sa_data,
				     dev->addr_len, 1);

	case SIOCSIFTXQLEN:
		if (ifr->ifr_qlen < 0)
			return -EINVAL;
		dev->tx_queue_len = ifr->ifr_qlen;
		return 0;

	case SIOCSIFNAME:
		ifr->ifr_newname[IFNAMSIZ-1] = '\0';
		return FUNC3(dev, ifr->ifr_newname);

	case SIOCSHWTSTAMP:
		err = FUNC10(ifr);
		if (err)
			return err;
		/* fall through */

	/*
	 *	Unknown or private ioctl
	 */
	default:
		if ((cmd >= SIOCDEVPRIVATE &&
		    cmd <= SIOCDEVPRIVATE + 15) ||
		    cmd == SIOCBONDENSLAVE ||
		    cmd == SIOCBONDRELEASE ||
		    cmd == SIOCBONDSETHWADDR ||
		    cmd == SIOCBONDSLAVEINFOQUERY ||
		    cmd == SIOCBONDINFOQUERY ||
		    cmd == SIOCBONDCHANGEACTIVE ||
		    cmd == SIOCGMIIPHY ||
		    cmd == SIOCGMIIREG ||
		    cmd == SIOCSMIIREG ||
		    cmd == SIOCBRADDIF ||
		    cmd == SIOCBRDELIF ||
		    cmd == SIOCSHWTSTAMP ||
		    cmd == SIOCWANDEV) {
			err = -EOPNOTSUPP;
			if (ops->ndo_do_ioctl) {
				if (FUNC11(dev))
					err = ops->ndo_do_ioctl(dev, ifr, cmd);
				else
					err = -ENODEV;
			}
		} else
			err = -EINVAL;

	}
	return err;
}