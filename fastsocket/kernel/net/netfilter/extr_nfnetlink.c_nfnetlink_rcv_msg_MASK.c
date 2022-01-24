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
typedef  size_t u_int8_t ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; int nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct nfnl_callback {int (* call ) (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct nlattr const**) ;} ;
struct nfnetlink_subsystem {TYPE_1__* cb; } ;
struct nfgenmsg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  policy; int /*<<< orphan*/  attr_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EPERM ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 struct nfnl_callback* FUNC4 (int,struct nfnetlink_subsystem const*) ; 
 struct nfnetlink_subsystem* FUNC5 (int) ; 
 int /*<<< orphan*/  nfnl ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct nlattr const**) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh)
{
	const struct nfnl_callback *nc;
	const struct nfnetlink_subsystem *ss;
	int type, err;

	if (FUNC10(skb, CAP_NET_ADMIN))
		return -EPERM;

	/* All the messages must at least contain nfgenmsg */
	if (nlh->nlmsg_len < FUNC2(sizeof(struct nfgenmsg)))
		return 0;

	type = nlh->nlmsg_type;
replay:
	ss = FUNC5(type);
	if (!ss) {
#ifdef CONFIG_MODULES
		nfnl_unlock();
		request_module("nfnetlink-subsys-%d", NFNL_SUBSYS_ID(type));
		nfnl_lock();
		ss = nfnetlink_get_subsys(type);
		if (!ss)
#endif
			return -EINVAL;
	}

	nc = FUNC4(type, ss);
	if (!nc)
		return -EINVAL;

	{
		int min_len = FUNC3(sizeof(struct nfgenmsg));
		u_int8_t cb_id = FUNC0(nlh->nlmsg_type);
		struct nlattr *cda[ss->cb[cb_id].attr_count + 1];
		struct nlattr *attr = (void *)nlh + min_len;
		int attrlen = nlh->nlmsg_len - min_len;

		err = FUNC8(cda, ss->cb[cb_id].attr_count,
				attr, attrlen, ss->cb[cb_id].policy);
		if (err < 0)
			return err;

		err = nc->call(nfnl, skb, nlh, (const struct nlattr **)cda);
		if (err == -EAGAIN)
			goto replay;
		return err;
	}
}