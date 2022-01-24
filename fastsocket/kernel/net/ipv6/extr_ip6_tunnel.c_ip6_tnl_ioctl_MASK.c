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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip6_tnl_parm {int /*<<< orphan*/  proto; } ;
struct ip6_tnl_net {struct net_device* fb_tnl_dev; } ;
struct ip6_tnl {struct net_device* dev; struct ip6_tnl_parm parms; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EEXIST ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
#define  SIOCADDTUNNEL 131 
#define  SIOCCHGTUNNEL 130 
#define  SIOCDELTUNNEL 129 
#define  SIOCGETTUNNEL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_tnl_parm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ip6_tnl_parm*,int) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct ip6_tnl*,struct ip6_tnl_parm*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip6_tnl_net*,struct ip6_tnl*) ; 
 struct ip6_tnl* FUNC6 (struct net*,struct ip6_tnl_parm*,int) ; 
 int /*<<< orphan*/  ip6_tnl_net_id ; 
 int /*<<< orphan*/  FUNC7 (struct ip6_tnl_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip6_tnl_parm*,struct ip6_tnl_parm*,int) ; 
 struct ip6_tnl_net* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static int
FUNC13(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	int err = 0;
	struct ip6_tnl_parm p;
	struct ip6_tnl *t = NULL;
	struct net *net = FUNC3(dev);
	struct ip6_tnl_net *ip6n = FUNC9(net, ip6_tnl_net_id);

	switch (cmd) {
	case SIOCGETTUNNEL:
		if (dev == ip6n->fb_tnl_dev) {
			if (FUNC1(&p, ifr->ifr_ifru.ifru_data, sizeof (p))) {
				err = -EFAULT;
				break;
			}
			t = FUNC6(net, &p, 0);
		}
		if (t == NULL)
			t = FUNC10(dev);
		FUNC8(&p, &t->parms, sizeof (p));
		if (FUNC2(ifr->ifr_ifru.ifru_data, &p, sizeof (p))) {
			err = -EFAULT;
		}
		break;
	case SIOCADDTUNNEL:
	case SIOCCHGTUNNEL:
		err = -EPERM;
		if (!FUNC0(CAP_NET_ADMIN))
			break;
		err = -EFAULT;
		if (FUNC1(&p, ifr->ifr_ifru.ifru_data, sizeof (p)))
			break;
		err = -EINVAL;
		if (p.proto != IPPROTO_IPV6 && p.proto != IPPROTO_IPIP &&
		    p.proto != 0)
			break;
		t = FUNC6(net, &p, cmd == SIOCADDTUNNEL);
		if (dev != ip6n->fb_tnl_dev && cmd == SIOCCHGTUNNEL) {
			if (t != NULL) {
				if (t->dev != dev) {
					err = -EEXIST;
					break;
				}
			} else
				t = FUNC10(dev);

			FUNC7(ip6n, t);
			err = FUNC4(t, &p);
			FUNC5(ip6n, t);
			FUNC11(dev);
		}
		if (t) {
			err = 0;
			if (FUNC2(ifr->ifr_ifru.ifru_data, &t->parms, sizeof (p)))
				err = -EFAULT;

		} else
			err = (cmd == SIOCADDTUNNEL ? -ENOBUFS : -ENOENT);
		break;
	case SIOCDELTUNNEL:
		err = -EPERM;
		if (!FUNC0(CAP_NET_ADMIN))
			break;

		if (dev == ip6n->fb_tnl_dev) {
			err = -EFAULT;
			if (FUNC1(&p, ifr->ifr_ifru.ifru_data, sizeof (p)))
				break;
			err = -ENOENT;
			if ((t = FUNC6(net, &p, 0)) == NULL)
				break;
			err = -EPERM;
			if (t->dev == ip6n->fb_tnl_dev)
				break;
			dev = t->dev;
		}
		err = 0;
		FUNC12(dev);
		break;
	default:
		err = -EINVAL;
	}
	return err;
}