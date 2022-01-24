#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rtmsg {int rtm_flags; } ;
struct rt6_rtnl_dump_arg {TYPE_1__* cb; int /*<<< orphan*/  skb; int /*<<< orphan*/  net; } ;
struct rt6_info {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  pid; } ;
struct TYPE_6__ {int /*<<< orphan*/  nlmsg_seq; } ;
struct TYPE_5__ {TYPE_2__* nlh; int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 TYPE_4__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int RTM_F_PREFIX ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 struct rtmsg* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rt6_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct rt6_info *rt, void *p_arg)
{
	struct rt6_rtnl_dump_arg *arg = (struct rt6_rtnl_dump_arg *) p_arg;
	int prefix;

	if (FUNC2(arg->cb->nlh) >= sizeof(struct rtmsg)) {
		struct rtmsg *rtm = FUNC1(arg->cb->nlh);
		prefix = (rtm->rtm_flags & RTM_F_PREFIX) != 0;
	} else
		prefix = 0;

	return FUNC3(arg->net,
		     arg->skb, rt, NULL, NULL, 0, RTM_NEWROUTE,
		     FUNC0(arg->cb->skb).pid, arg->cb->nlh->nlmsg_seq,
		     prefix, 0, NLM_F_MULTI);
}