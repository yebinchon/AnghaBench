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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;
struct ipmac_elem {scalar_t__ match; int /*<<< orphan*/  ether; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {scalar_t__ last_ip; scalar_t__ first_ip; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IPSET_ATTR_ADT ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_ETHER ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 scalar_t__ MAC_EMPTY ; 
 scalar_t__ MAC_FILLED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipmac_elem* FUNC2 (struct bitmap_ipmac const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(const struct ip_set *set,
		  struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct bitmap_ipmac *map = set->data;
	const struct ipmac_elem *elem;
	struct nlattr *atd, *nested;
	u32 id, first = cb->args[2];
	u32 last = map->last_ip - map->first_ip;

	atd = FUNC5(skb, IPSET_ATTR_ADT);
	if (!atd)
		return -EMSGSIZE;
	for (; cb->args[2] <= last; cb->args[2]++) {
		id = cb->args[2];
		elem = FUNC2(map, id);
		if (elem->match == MAC_EMPTY)
			continue;
		nested = FUNC5(skb, IPSET_ATTR_DATA);
		if (!nested) {
			if (id == first) {
				FUNC6(skb, atd);
				return -EMSGSIZE;
			} else
				goto nla_put_failure;
		}
		FUNC1(skb, IPSET_ATTR_IP,
				FUNC3(map->first_ip + id));
		if (elem->match == MAC_FILLED)
			FUNC0(skb, IPSET_ATTR_ETHER, ETH_ALEN,
				elem->ether);
		FUNC4(skb, nested);
	}
	FUNC4(skb, atd);
	/* Set listing finished */
	cb->args[2] = 0;

	return 0;

nla_put_failure:
	FUNC6(skb, nested);
	FUNC4(skb, atd);
	if (FUNC7(id == first)) {
		cb->args[2] = 0;
		return -EMSGSIZE;
	}
	return 0;
}