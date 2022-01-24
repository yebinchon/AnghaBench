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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_userpolicy_info {int /*<<< orphan*/  dir; } ;
struct xfrm_policy {int /*<<< orphan*/  security; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct km_event {scalar_t__ event; int /*<<< orphan*/  pid; int /*<<< orphan*/  seq; } ;
struct TYPE_2__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  sessionid; int /*<<< orphan*/  loginuid; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ XFRM_MSG_NEWPOLICY ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_policy*,int /*<<< orphan*/ ,struct km_event*) ; 
 struct xfrm_userpolicy_info* FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfrm_userpolicy_info*) ; 
 int FUNC7 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_policy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC10 (struct net*,struct xfrm_userpolicy_info*,struct nlattr**,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct xfrm_policy*,int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC5(skb->sk);
	struct xfrm_userpolicy_info *p = FUNC3(nlh);
	struct xfrm_policy *xp;
	struct km_event c;
	int err;
	int excl;
	uid_t loginuid = FUNC0(skb).loginuid;
	u32 sessionid = FUNC0(skb).sessionid;
	u32 sid = FUNC0(skb).sid;

	err = FUNC6(p);
	if (err)
		return err;
	err = FUNC7(attrs);
	if (err)
		return err;

	xp = FUNC10(net, p, attrs, &err);
	if (!xp)
		return err;

	/* shouldnt excl be based on nlh flags??
	 * Aha! this is anti-netlink really i.e  more pfkey derived
	 * in netlink excl is a flag and you wouldnt need
	 * a type XFRM_MSG_UPDPOLICY - JHS */
	excl = nlh->nlmsg_type == XFRM_MSG_NEWPOLICY;
	err = FUNC11(p->dir, xp, excl);
	FUNC8(xp, err ? 0 : 1, loginuid, sessionid, sid);

	if (err) {
		FUNC4(xp->security);
		FUNC1(xp);
		return err;
	}

	c.event = nlh->nlmsg_type;
	c.seq = nlh->nlmsg_seq;
	c.pid = nlh->nlmsg_pid;
	FUNC2(xp, p->dir, &c);

	FUNC9(xp);

	return 0;
}