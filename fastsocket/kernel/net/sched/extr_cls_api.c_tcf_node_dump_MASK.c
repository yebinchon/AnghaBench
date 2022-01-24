#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcf_walker {int dummy; } ;
struct tcf_proto {int dummy; } ;
struct tcf_dump_args {TYPE_2__* cb; int /*<<< orphan*/  skb; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  RTM_NEWTFILTER ; 
 int FUNC1 (int /*<<< orphan*/ ,struct tcf_proto*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tcf_proto *tp, unsigned long n,
			 struct tcf_walker *arg)
{
	struct tcf_dump_args *a = (void *)arg;

	return FUNC1(a->skb, tp, n, FUNC0(a->cb->skb).pid,
			     a->cb->nlh->nlmsg_seq, NLM_F_MULTI, RTM_NEWTFILTER);
}