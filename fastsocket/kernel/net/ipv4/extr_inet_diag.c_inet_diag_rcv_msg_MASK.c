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
struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_dump_control {int /*<<< orphan*/  dump; } ;
struct inet_diag_req {int dummy; } ;
struct inet_diag_bc_op {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INET_DIAG_GETSOCK_MAX ; 
 int /*<<< orphan*/  INET_DIAG_REQ_BYTECODE ; 
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  idiagnl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  inet_diag_dump ; 
 int FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 scalar_t__ FUNC5 (struct nlmsghdr*,int) ; 
 struct nlattr* FUNC6 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nlmsghdr*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct nlmsghdr *nlh)
{
	int hdrlen = sizeof(struct inet_diag_req);

	if (nlh->nlmsg_type >= INET_DIAG_GETSOCK_MAX ||
	    FUNC7(nlh) < hdrlen)
		return -EINVAL;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		if (FUNC5(nlh, hdrlen)) {
			struct nlattr *attr;

			attr = FUNC6(nlh, hdrlen,
					       INET_DIAG_REQ_BYTECODE);
			if (attr == NULL ||
			    FUNC4(attr) < sizeof(struct inet_diag_bc_op) ||
			    FUNC0(FUNC3(attr), FUNC4(attr)))
				return -EINVAL;
		}
		{
			struct netlink_dump_control c = {
				.dump = inet_diag_dump,
			};
			return FUNC2(idiagnl, skb, nlh, &c);
		}
	}

	return FUNC1(skb, nlh);
}