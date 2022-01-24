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
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {size_t* args; } ;
struct ip_set {struct bitmap_ip* data; } ;
struct bitmap_ip {unsigned long* members; scalar_t__ elements; size_t hosts; scalar_t__ first_ip; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_ADT ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlattr*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(const struct ip_set *set,
		struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct bitmap_ip *map = set->data;
	struct nlattr *adt, *nested;
	u32 id, first = cb->args[2];
	const unsigned long *members = map->members;

	adt = FUNC6(skb, IPSET_ATTR_ADT);
	if (!adt)
		return -EMSGSIZE;
	for (; cb->args[2] < map->elements; cb->args[2]++) {
		id = cb->args[2];
		if (!FUNC4(members[id]))
			continue;
		nested = FUNC6(skb, IPSET_ATTR_DATA);
		if (!nested) {
			if (id == first) {
				FUNC7(skb, adt);
				return -EMSGSIZE;
			} else
				goto nla_put_failure;
		}
		FUNC0(skb, IPSET_ATTR_IP,
				FUNC2(map->first_ip + id * map->hosts));
		FUNC1(skb, IPSET_ATTR_TIMEOUT,
			      FUNC2(FUNC3(members[id])));
		FUNC5(skb, nested);
	}
	FUNC5(skb, adt);

	/* Set listing finished */
	cb->args[2] = 0;

	return 0;

nla_put_failure:
	FUNC7(skb, nested);
	FUNC5(skb, adt);
	if (FUNC8(id == first)) {
		cb->args[2] = 0;
		return -EMSGSIZE;
	}
	return 0;
}