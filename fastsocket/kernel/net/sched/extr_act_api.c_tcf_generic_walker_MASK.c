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
struct tcf_hashinfo {int dummy; } ;
struct tc_action {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct TYPE_2__ {struct tcf_hashinfo* hinfo; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTM_DELACTION ; 
 int RTM_GETACTION ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (struct sk_buff*,struct tc_action*,struct tcf_hashinfo*) ; 
 int FUNC2 (struct sk_buff*,struct netlink_callback*,struct tc_action*,struct tcf_hashinfo*) ; 

int FUNC3(struct sk_buff *skb, struct netlink_callback *cb,
		       int type, struct tc_action *a)
{
	struct tcf_hashinfo *hinfo = a->ops->hinfo;

	if (type == RTM_DELACTION) {
		return FUNC1(skb, a, hinfo);
	} else if (type == RTM_GETACTION) {
		return FUNC2(skb, cb, a, hinfo);
	} else {
		FUNC0(1, "tcf_generic_walker: unknown action %d\n", type);
		return -EINVAL;
	}
}