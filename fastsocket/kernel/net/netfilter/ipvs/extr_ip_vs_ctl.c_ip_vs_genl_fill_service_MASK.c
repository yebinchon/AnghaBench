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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_flags {int /*<<< orphan*/  mask; int /*<<< orphan*/  flags; } ;
struct ip_vs_service {int fwmark; int timeout; int netmask; int /*<<< orphan*/  stats; TYPE_2__* pe; TYPE_1__* scheduler; int /*<<< orphan*/  port; struct ip_vs_flags addr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  af; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  flags ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int HZ ; 
 int /*<<< orphan*/  IPVS_CMD_ATTR_SERVICE ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_ADDR ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_AF ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_FLAGS ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_FWMARK ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_NETMASK ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_PE_NAME ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_PORT ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_PROTOCOL ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_SCHED_NAME ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_STATS ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct ip_vs_flags*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
				   struct ip_vs_service *svc)
{
	struct nlattr *nl_service;
	struct ip_vs_flags flags = { .flags = svc->flags,
				     .mask = ~0 };

	nl_service = FUNC7(skb, IPVS_CMD_ATTR_SERVICE);
	if (!nl_service)
		return -EMSGSIZE;

	FUNC2(skb, IPVS_SVC_ATTR_AF, svc->af);

	if (svc->fwmark) {
		FUNC3(skb, IPVS_SVC_ATTR_FWMARK, svc->fwmark);
	} else {
		FUNC2(skb, IPVS_SVC_ATTR_PROTOCOL, svc->protocol);
		FUNC0(skb, IPVS_SVC_ATTR_ADDR, sizeof(svc->addr), &svc->addr);
		FUNC2(skb, IPVS_SVC_ATTR_PORT, svc->port);
	}

	FUNC1(skb, IPVS_SVC_ATTR_SCHED_NAME, svc->scheduler->name);
	if (svc->pe)
		FUNC1(skb, IPVS_SVC_ATTR_PE_NAME, svc->pe->name);
	FUNC0(skb, IPVS_SVC_ATTR_FLAGS, sizeof(flags), &flags);
	FUNC3(skb, IPVS_SVC_ATTR_TIMEOUT, svc->timeout / HZ);
	FUNC3(skb, IPVS_SVC_ATTR_NETMASK, svc->netmask);

	if (FUNC4(skb, IPVS_SVC_ATTR_STATS, &svc->stats))
		goto nla_put_failure;

	FUNC6(skb, nl_service);

	return 0;

nla_put_failure:
	FUNC5(skb, nl_service);
	return -EMSGSIZE;
}