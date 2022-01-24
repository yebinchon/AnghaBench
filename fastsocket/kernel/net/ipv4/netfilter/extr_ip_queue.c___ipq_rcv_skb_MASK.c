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
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_pid; int nlmsg_flags; int nlmsg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EBUSY ; 
 int ECOMM ; 
 int EINVAL ; 
 int EPERM ; 
 int IPQM_BASE ; 
 int IPQM_MAX ; 
 int MSG_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (struct nlmsghdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int NLMSG_NOOP ; 
 int NLM_F_ACK ; 
 int NLM_F_MULTI ; 
 int NLM_F_REQUEST ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*) ; 
 int peer_pid ; 
 int /*<<< orphan*/  queue_lock ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC10(struct sk_buff *skb)
{
	int status, type, pid, flags, nlmsglen, skblen;
	struct nlmsghdr *nlh;

	skblen = skb->len;
	if (skblen < sizeof(*nlh))
		return;

	nlh = FUNC6(skb);
	nlmsglen = nlh->nlmsg_len;
	if (nlmsglen < sizeof(*nlh) || skblen < nlmsglen)
		return;

	pid = nlh->nlmsg_pid;
	flags = nlh->nlmsg_flags;

	if(pid <= 0 || !(flags & NLM_F_REQUEST) || flags & NLM_F_MULTI)
		FUNC2(-EINVAL);

	if (flags & MSG_TRUNC)
		FUNC2(-ECOMM);

	type = nlh->nlmsg_type;
	if (type < NLMSG_NOOP || type >= IPQM_MAX)
		FUNC2(-EINVAL);

	if (type <= IPQM_BASE)
		return;

	if (FUNC7(skb, CAP_NET_ADMIN))
		FUNC2(-EPERM);

	FUNC8(&queue_lock);

	if (peer_pid) {
		if (peer_pid != pid) {
			FUNC9(&queue_lock);
			FUNC2(-EBUSY);
		}
	} else {
		FUNC4();
		peer_pid = pid;
	}

	FUNC9(&queue_lock);

	status = FUNC3(FUNC0(nlh), type,
				  nlmsglen - FUNC1(0));
	if (status < 0)
		FUNC2(status);

	if (flags & NLM_F_ACK)
		FUNC5(skb, nlh, 0);
	return;
}