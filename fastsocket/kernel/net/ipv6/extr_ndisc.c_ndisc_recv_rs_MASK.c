#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; int /*<<< orphan*/  dev; } ;
struct rs_msg {int /*<<< orphan*/  opt; } ;
struct neighbour {int dummy; } ;
struct ndisc_options {scalar_t__ nd_opts_src_lladdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  forwarding; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {struct in6_addr saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int NEIGH_UPDATE_F_OVERRIDE ; 
 int NEIGH_UPDATE_F_OVERRIDE_ISROUTER ; 
 int NEIGH_UPDATE_F_WEAK_OVERRIDE ; 
 int /*<<< orphan*/  NUD_STALE ; 
 struct neighbour* FUNC2 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ ,int) ; 
 struct inet6_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 scalar_t__ FUNC5 (struct in6_addr*) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  nd_tbl ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long,struct ndisc_options*) ; 
 int /*<<< orphan*/  FUNC9 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC10 (struct neighbour*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC13(struct sk_buff *skb)
{
	struct rs_msg *rs_msg = (struct rs_msg *)FUNC12(skb);
	unsigned long ndoptlen = skb->len - sizeof(*rs_msg);
	struct neighbour *neigh;
	struct inet6_dev *idev;
	struct in6_addr *saddr = &FUNC6(skb)->saddr;
	struct ndisc_options ndopts;
	u8 *lladdr = NULL;

	if (skb->len < sizeof(*rs_msg))
		return;

	idev = FUNC3(skb->dev);
	if (!idev) {
		if (FUNC11())
			FUNC0("ICMP6 RS: can't find in6 device\n");
		return;
	}

	/* Don't accept RS if we're not in router mode */
	if (!idev->cnf.forwarding)
		goto out;

	/*
	 * Don't update NCE if src = ::;
	 * this implies that the source node has no ip address assigned yet.
	 */
	if (FUNC5(saddr))
		goto out;

	/* Parse ND options */
	if (!FUNC8(rs_msg->opt, ndoptlen, &ndopts)) {
		if (FUNC11())
			FUNC1("ICMP6 NS: invalid ND option, ignored\n");
		goto out;
	}

	if (ndopts.nd_opts_src_lladdr) {
		lladdr = FUNC7(ndopts.nd_opts_src_lladdr,
					     skb->dev);
		if (!lladdr)
			goto out;
	}

	neigh = FUNC2(&nd_tbl, saddr, skb->dev, 1);
	if (neigh) {
		FUNC10(neigh, lladdr, NUD_STALE,
			     NEIGH_UPDATE_F_WEAK_OVERRIDE|
			     NEIGH_UPDATE_F_OVERRIDE|
			     NEIGH_UPDATE_F_OVERRIDE_ISROUTER);
		FUNC9(neigh);
	}
out:
	FUNC4(idev);
}