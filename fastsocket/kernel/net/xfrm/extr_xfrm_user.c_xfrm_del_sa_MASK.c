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
struct xfrm_usersa_id {int dummy; } ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct km_event {int /*<<< orphan*/  event; int /*<<< orphan*/  pid; int /*<<< orphan*/  seq; } ;
struct TYPE_2__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  sessionid; int /*<<< orphan*/  loginuid; } ;

/* Variables and functions */
 int EPERM ; 
 int ESRCH ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_usersa_id* FUNC2 (struct nlmsghdr*) ; 
 int FUNC3 (struct xfrm_state*) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfrm_state*) ; 
 scalar_t__ FUNC7 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC9 (struct net*,struct xfrm_usersa_id*,struct nlattr**,int*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC4(skb->sk);
	struct xfrm_state *x;
	int err = -ESRCH;
	struct km_event c;
	struct xfrm_usersa_id *p = FUNC2(nlh);
	uid_t loginuid = FUNC0(skb).loginuid;
	u32 sessionid = FUNC0(skb).sessionid;
	u32 sid = FUNC0(skb).sid;

	x = FUNC9(net, p, attrs, &err);
	if (x == NULL)
		return err;

	if ((err = FUNC3(x)) != 0)
		goto out;

	if (FUNC7(x)) {
		err = -EPERM;
		goto out;
	}

	err = FUNC6(x);

	if (err < 0)
		goto out;

	c.seq = nlh->nlmsg_seq;
	c.pid = nlh->nlmsg_pid;
	c.event = nlh->nlmsg_type;
	FUNC1(x, &c);

out:
	FUNC5(x, err ? 0 : 1, loginuid, sessionid, sid);
	FUNC8(x);
	return err;
}