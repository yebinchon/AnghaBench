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
struct ipmac_telem {scalar_t__ match; scalar_t__ timeout; int /*<<< orphan*/  ether; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {scalar_t__ last_ip; scalar_t__ first_ip; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IPSET_ATTR_ADT ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_ETHER ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 scalar_t__ MAC_FILLED ; 
 scalar_t__ MAC_UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipmac_telem* FUNC3 (struct bitmap_ipmac const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ipmac_telem const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlattr*) ; 

__attribute__((used)) static int
FUNC10(const struct ip_set *set,
		   struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct bitmap_ipmac *map = set->data;
	const struct ipmac_telem *elem;
	struct nlattr *atd, *nested;
	u32 id, first = cb->args[2];
	u32 timeout, last = map->last_ip - map->first_ip;

	atd = FUNC8(skb, IPSET_ATTR_ADT);
	if (!atd)
		return -EMSGSIZE;
	for (; cb->args[2] <= last; cb->args[2]++) {
		id = cb->args[2];
		elem = FUNC3(map, id);
		if (!FUNC4(elem))
			continue;
		nested = FUNC8(skb, IPSET_ATTR_DATA);
		if (!nested) {
			if (id == first) {
				FUNC9(skb, atd);
				return -EMSGSIZE;
			} else
				goto nla_put_failure;
		}
		FUNC1(skb, IPSET_ATTR_IP,
				FUNC5(map->first_ip + id));
		if (elem->match == MAC_FILLED)
			FUNC0(skb, IPSET_ATTR_ETHER, ETH_ALEN,
				elem->ether);
		timeout = elem->match == MAC_UNSET ? elem->timeout
				: FUNC6(elem->timeout);
		FUNC2(skb, IPSET_ATTR_TIMEOUT, FUNC5(timeout));
		FUNC7(skb, nested);
	}
	FUNC7(skb, atd);
	/* Set listing finished */
	cb->args[2] = 0;

	return 0;

nla_put_failure:
	FUNC9(skb, nested);
	FUNC7(skb, atd);
	return -EMSGSIZE;
}