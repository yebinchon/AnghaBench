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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net {int dummy; } ;
struct ndmsg {scalar_t__ ndm_ifindex; int ndm_flags; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {int (* ndo_fdb_del ) (struct ndmsg*,struct nlattr**,struct net_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ ETH_ALEN ; 
 int IFF_BRIDGE_PORT ; 
 size_t NDA_LLADDR ; 
 int /*<<< orphan*/  NDA_MAX ; 
 int NTF_MASTER ; 
 int NTF_SELF ; 
 int /*<<< orphan*/  RTM_DELNEIGH ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 struct ndmsg* FUNC5 (struct nlmsghdr*) ; 
 int FUNC6 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ndmsg*,struct nlattr**,struct net_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC9(skb->sk);
	struct ndmsg *ndm;
	struct nlattr *tb[NDA_MAX+1];
	struct net_device *dev;
	int err = -EINVAL;
	__u8 *addr;

	if (!FUNC1(CAP_NET_ADMIN))
		return -EPERM;

	err = FUNC6(nlh, sizeof(*ndm), tb, NDA_MAX, NULL);
	if (err < 0)
		return err;

	ndm = FUNC5(nlh);
	if (ndm->ndm_ifindex == 0) {
		FUNC7("PF_BRIDGE: RTM_DELNEIGH with invalid ifindex\n");
		return -EINVAL;
	}

	dev = FUNC0(net, ndm->ndm_ifindex);
	if (dev == NULL) {
		FUNC7("PF_BRIDGE: RTM_DELNEIGH with unknown ifindex\n");
		return -ENODEV;
	}

	if (!tb[NDA_LLADDR] || FUNC4(tb[NDA_LLADDR]) != ETH_ALEN) {
		FUNC7("PF_BRIDGE: RTM_DELNEIGH with invalid address\n");
		return -EINVAL;
	}

	addr = FUNC3(tb[NDA_LLADDR]);

	err = -EOPNOTSUPP;

	/* Support fdb on master device the net/bridge default case */
	if ((!ndm->ndm_flags || ndm->ndm_flags & NTF_MASTER) &&
	    (dev->priv_flags & IFF_BRIDGE_PORT)) {
		ndm->ndm_flags &= ~NTF_MASTER;
	}

	/* Embedded bridge, macvlan, and any other device support */
	if ((ndm->ndm_flags & NTF_SELF) && FUNC2(dev)->ndo_fdb_del) {
		err = FUNC2(dev)->ndo_fdb_del(ndm, tb, dev, addr);

		if (!err) {
			FUNC8(dev, addr, RTM_DELNEIGH);
			ndm->ndm_flags &= ~NTF_SELF;
		}
	}

	return err;
}