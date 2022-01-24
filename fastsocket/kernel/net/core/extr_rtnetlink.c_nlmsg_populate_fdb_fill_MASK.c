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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct ndmsg {unsigned int ndm_flags; int /*<<< orphan*/  ndm_state; int /*<<< orphan*/  ndm_ifindex; scalar_t__ ndm_type; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; int /*<<< orphan*/  ndm_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BRIDGE ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NDA_LLADDR ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  NUD_PERMANENT ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ndmsg* FUNC2 (struct nlmsghdr*) ; 
 int FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
				   struct net_device *dev,
				   u8 *addr, u32 pid, u32 seq,
				   int type, unsigned int flags)
{
	struct nlmsghdr *nlh;
	struct ndmsg *ndm;

	nlh = FUNC4(skb, pid, seq, type, sizeof(*ndm), NLM_F_MULTI);
	if (!nlh)
		return -EMSGSIZE;

	ndm = FUNC2(nlh);
	ndm->ndm_family  = AF_BRIDGE;
	ndm->ndm_pad1	 = 0;
	ndm->ndm_pad2    = 0;
	ndm->ndm_flags	 = flags;
	ndm->ndm_type	 = 0;
	ndm->ndm_ifindex = dev->ifindex;
	ndm->ndm_state   = NUD_PERMANENT;

	if (FUNC0(skb, NDA_LLADDR, ETH_ALEN, addr))
		goto nla_put_failure;

	return FUNC3(skb, nlh);

nla_put_failure:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}