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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_usersa_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct xfrm_state {TYPE_1__ km; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct km_event {scalar_t__ event; int /*<<< orphan*/  pid; int /*<<< orphan*/  seq; } ;
struct TYPE_4__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  sessionid; int /*<<< orphan*/  loginuid; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ XFRM_MSG_NEWSA ; 
 int /*<<< orphan*/  XFRM_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_usersa_info* FUNC3 (struct nlmsghdr*) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfrm_usersa_info*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC8 (struct net*,struct xfrm_usersa_info*,struct nlattr**,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 
 int FUNC11 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC4(skb->sk);
	struct xfrm_usersa_info *p = FUNC3(nlh);
	struct xfrm_state *x;
	int err;
	struct km_event c;
	uid_t loginuid = FUNC0(skb).loginuid;
	u32 sessionid = FUNC0(skb).sessionid;
	u32 sid = FUNC0(skb).sid;

	err = FUNC5(p, attrs);
	if (err)
		return err;

	x = FUNC8(net, p, attrs, &err);
	if (!x)
		return err;

	FUNC9(x);
	if (nlh->nlmsg_type == XFRM_MSG_NEWSA)
		err = FUNC7(x);
	else
		err = FUNC11(x);

	FUNC6(x, err ? 0 : 1, loginuid, sessionid, sid);

	if (err < 0) {
		x->km.state = XFRM_STATE_DEAD;
		FUNC1(x);
		goto out;
	}

	c.seq = nlh->nlmsg_seq;
	c.pid = nlh->nlmsg_pid;
	c.event = nlh->nlmsg_type;

	FUNC2(x, &c);
out:
	FUNC10(x);
	return err;
}