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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct ip6addrlbl_entry {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrlblmsg {scalar_t__ ifal_family; int ifal_prefixlen; scalar_t__ ifal_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IFAL_ADDRESS ; 
 int /*<<< orphan*/  IFAL_MAX ; 
 TYPE_2__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RTM_NEWADDRLABEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,scalar_t__) ; 
 struct ip6addrlbl_entry* FUNC3 (struct net*,struct in6_addr*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ifal_policy ; 
 int FUNC4 (struct sk_buff*,struct ip6addrlbl_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ip6addrlbl_entry*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ip6addrlbl_entry*) ; 
 TYPE_1__ ip6addrlbl_table ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct in6_addr* FUNC10 (struct nlattr*) ; 
 struct ifaddrlblmsg* FUNC11 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *in_skb, struct nlmsghdr* nlh,
			  void *arg)
{
	struct net *net = FUNC17(in_skb->sk);
	struct ifaddrlblmsg *ifal;
	struct nlattr *tb[IFAL_MAX+1];
	struct in6_addr *addr;
	u32 lseq;
	int err = 0;
	struct ip6addrlbl_entry *p;
	struct sk_buff *skb;

	err = FUNC13(nlh, sizeof(*ifal), tb, IFAL_MAX, ifal_policy);
	if (err < 0)
		return err;

	ifal = FUNC11(nlh);

	if (ifal->ifal_family != AF_INET6 ||
	    ifal->ifal_prefixlen != 128)
		return -EINVAL;

	if (ifal->ifal_index &&
	    !FUNC2(net, ifal->ifal_index))
		return -EINVAL;

	if (!tb[IFAL_ADDRESS])
		return -EINVAL;

	addr = FUNC10(tb[IFAL_ADDRESS]);
	if (!addr)
		return -EINVAL;

	FUNC14();
	p = FUNC3(net, addr, FUNC8(addr), ifal->ifal_index);
	if (p && FUNC5(p))
		p = NULL;
	lseq = ip6addrlbl_table.seq;
	FUNC15();

	if (!p) {
		err = -ESRCH;
		goto out;
	}

	if (!(skb = FUNC12(FUNC6(), GFP_KERNEL))) {
		FUNC7(p);
		return -ENOBUFS;
	}

	err = FUNC4(skb, p, lseq,
			      FUNC0(in_skb).pid, nlh->nlmsg_seq,
			      RTM_NEWADDRLABEL, 0);

	FUNC7(p);

	if (err < 0) {
		FUNC1(err == -EMSGSIZE);
		FUNC9(skb);
		goto out;
	}

	err = FUNC16(skb, net, FUNC0(in_skb).pid);
out:
	return err;
}