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
struct sk_buff {int /*<<< orphan*/  ipvs_property; int /*<<< orphan*/  nf_trace; int /*<<< orphan*/  tc_index; int /*<<< orphan*/  mark; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  priority; int /*<<< orphan*/  pkt_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *to, struct sk_buff *from)
{
	to->pkt_type = from->pkt_type;
	to->priority = from->priority;
	to->protocol = from->protocol;
	FUNC5(to);
	FUNC6(to, FUNC1(FUNC4(from)));
	to->dev = from->dev;
	to->mark = from->mark;

	/* Copy the flags to each fragment. */
	FUNC0(to)->flags = FUNC0(from)->flags;

#ifdef CONFIG_NET_SCHED
	to->tc_index = from->tc_index;
#endif
	FUNC2(to, from);
#if defined(CONFIG_NETFILTER_XT_TARGET_TRACE) || \
    defined(CONFIG_NETFILTER_XT_TARGET_TRACE_MODULE)
	to->nf_trace = from->nf_trace;
#endif
#if defined(CONFIG_IP_VS) || defined(CONFIG_IP_VS_MODULE)
	to->ipvs_property = from->ipvs_property;
#endif
	FUNC3(to, from);
}