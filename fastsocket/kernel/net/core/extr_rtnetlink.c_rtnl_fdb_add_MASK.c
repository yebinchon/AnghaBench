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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net {int dummy; } ;
struct ndmsg {scalar_t__ ndm_ifindex; int ndm_flags; } ;
struct TYPE_2__ {int (* ndo_fdb_add ) (struct ndmsg*,struct nlattr**,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 scalar_t__ ETH_ALEN ; 
 int IFF_BRIDGE_PORT ; 
 size_t NDA_LLADDR ; 
 int /*<<< orphan*/  NDA_MAX ; 
 int NTF_MASTER ; 
 int NTF_SELF ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 
 struct ndmsg* FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ndmsg*,struct nlattr**,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC8(skb->sk);
	struct ndmsg *ndm;
	struct nlattr *tb[NDA_MAX+1];
	struct net_device *dev;
	u8 *addr;
	int err;

	err = FUNC5(nlh, sizeof(*ndm), tb, NDA_MAX, NULL);
	if (err < 0)
		return err;

	ndm = FUNC4(nlh);
	if (ndm->ndm_ifindex == 0) {
		FUNC6("PF_BRIDGE: RTM_NEWNEIGH with invalid ifindex\n");
		return -EINVAL;
	}

	dev = FUNC0(net, ndm->ndm_ifindex);
	if (dev == NULL) {
		FUNC6("PF_BRIDGE: RTM_NEWNEIGH with unknown ifindex\n");
		return -ENODEV;
	}

	if (!tb[NDA_LLADDR] || FUNC3(tb[NDA_LLADDR]) != ETH_ALEN) {
		FUNC6("PF_BRIDGE: RTM_NEWNEIGH with invalid address\n");
		return -EINVAL;
	}

	addr = FUNC2(tb[NDA_LLADDR]);

	err = -EOPNOTSUPP;

	/* Support fdb on master device the net/bridge default case */
	if ((!ndm->ndm_flags || ndm->ndm_flags & NTF_MASTER) &&
	    (dev->priv_flags & IFF_BRIDGE_PORT)) {
		ndm->ndm_flags &= ~NTF_MASTER;
	}

	/* Embedded bridge, macvlan, and any other device support */
	if ((ndm->ndm_flags & NTF_SELF) && FUNC1(dev)->ndo_fdb_add) {
		err = FUNC1(dev)->ndo_fdb_add(ndm, tb, dev, addr,
							nlh->nlmsg_flags);

		if (!err) {
			FUNC7(dev, addr, RTM_NEWNEIGH);
			ndm->ndm_flags &= ~NTF_SELF;
		}
	}

	return err;
}