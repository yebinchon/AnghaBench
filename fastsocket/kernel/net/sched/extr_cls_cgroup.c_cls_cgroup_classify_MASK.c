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
typedef  scalar_t__ u32 ;
struct tcf_result {scalar_t__ class; scalar_t__ classid; } ;
struct tcf_proto {struct cls_cgroup_head* root; } ;
struct sk_buff {TYPE_1__* sk; } ;
struct cls_cgroup_head {int /*<<< orphan*/  exts; int /*<<< orphan*/  ematches; } ;
struct TYPE_4__ {scalar_t__ classid; } ;
struct TYPE_3__ {scalar_t__ sk_classid; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,struct tcf_result*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct tcf_proto *tp,
			       struct tcf_result *res)
{
	struct cls_cgroup_head *head = tp->root;
	u32 classid;

	FUNC1();
	classid = FUNC3(current)->classid;
	FUNC2();

	/*
	 * Due to the nature of the classifier it is required to ignore all
	 * packets originating from softirq context as accessing `current'
	 * would lead to false results.
	 *
	 * This test assumes that all callers of dev_queue_xmit() explicitely
	 * disable bh. Knowing this, it is possible to detect softirq based
	 * calls by looking at the number of nested bh disable calls because
	 * softirqs always disables bh.
	 */
	if (FUNC0()) {
		/* If there is an sk_classid we'll use that. */
		if (!skb->sk)
			return -1;
		classid = skb->sk->sk_classid;
	}

	if (!classid)
		return -1;

	if (!FUNC4(skb, &head->ematches, NULL))
		return -1;

	res->classid = classid;
	res->class = 0;
	return FUNC5(skb, &head->exts, res);
}