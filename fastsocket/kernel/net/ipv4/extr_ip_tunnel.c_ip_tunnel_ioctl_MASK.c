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
struct net_device {unsigned int flags; int /*<<< orphan*/  type; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  ttl; } ;
struct ip_tunnel_parm {int i_flags; int o_flags; TYPE_1__ iph; int /*<<< orphan*/  o_key; int /*<<< orphan*/  i_key; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {struct net_device* dev; int /*<<< orphan*/  parms; int /*<<< orphan*/  ip_tnl_net_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int EPERM ; 
 unsigned int IFF_BROADCAST ; 
 unsigned int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  IP_DF ; 
#define  SIOCADDTUNNEL 131 
#define  SIOCCHGTUNNEL 130 
#define  SIOCDELTUNNEL 129 
#define  SIOCGETTUNNEL 128 
 int TUNNEL_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC4 (struct net*,struct ip_tunnel_net*,struct ip_tunnel_parm*) ; 
 struct ip_tunnel* FUNC5 (struct ip_tunnel_net*,struct ip_tunnel_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_tunnel_net*,struct ip_tunnel*,struct net_device*,struct ip_tunnel_parm*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_tunnel_parm*,int /*<<< orphan*/ *,int) ; 
 struct ip_tunnel_net* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

int FUNC12(struct net_device *dev, struct ip_tunnel_parm *p, int cmd)
{
	int err = 0;
	struct ip_tunnel *t;
	struct net *net = FUNC2(dev);
	struct ip_tunnel *tunnel = FUNC10(dev);
	struct ip_tunnel_net *itn = FUNC9(net, tunnel->ip_tnl_net_id);

	FUNC0(!itn->fb_tunnel_dev);
	switch (cmd) {
	case SIOCGETTUNNEL:
		t = NULL;
		if (dev == itn->fb_tunnel_dev)
			t = FUNC5(itn, p, itn->fb_tunnel_dev->type);
		if (t == NULL)
			t = FUNC10(dev);
		FUNC8(p, &t->parms, sizeof(*p));
		break;

	case SIOCADDTUNNEL:
	case SIOCCHGTUNNEL:
		err = -EPERM;
		if (!FUNC1(CAP_NET_ADMIN))
			goto done;
		if (p->iph.ttl)
			p->iph.frag_off |= FUNC3(IP_DF);
		if (!(p->i_flags&TUNNEL_KEY))
			p->i_key = 0;
		if (!(p->o_flags&TUNNEL_KEY))
			p->o_key = 0;

		t = FUNC5(itn, p, itn->fb_tunnel_dev->type);

		if (!t && (cmd == SIOCADDTUNNEL))
			t = FUNC4(net, itn, p);

		if (dev != itn->fb_tunnel_dev && cmd == SIOCCHGTUNNEL) {
			if (t != NULL) {
				if (t->dev != dev) {
					err = -EEXIST;
					break;
				}
			} else {
				unsigned int nflags = 0;

				if (FUNC7(p->iph.daddr))
					nflags = IFF_BROADCAST;
				else if (p->iph.daddr)
					nflags = IFF_POINTOPOINT;

				if ((dev->flags^nflags)&(IFF_POINTOPOINT|IFF_BROADCAST)) {
					err = -EINVAL;
					break;
				}

				t = FUNC10(dev);
			}
		}

		if (t) {
			err = 0;
			FUNC6(itn, t, dev, p, true);
		} else
			err = (cmd == SIOCADDTUNNEL ? -ENOBUFS : -ENOENT);
		break;

	case SIOCDELTUNNEL:
		err = -EPERM;
		if (!FUNC1(CAP_NET_ADMIN))
			goto done;

		if (dev == itn->fb_tunnel_dev) {
			err = -ENOENT;
			t = FUNC5(itn, p, itn->fb_tunnel_dev->type);
			if (t == NULL)
				goto done;
			err = -EPERM;
			if (t == FUNC10(itn->fb_tunnel_dev))
				goto done;
			dev = t->dev;
		}
		FUNC11(dev);
		err = 0;
		break;

	default:
		err = -EINVAL;
	}

done:
	return err;
}