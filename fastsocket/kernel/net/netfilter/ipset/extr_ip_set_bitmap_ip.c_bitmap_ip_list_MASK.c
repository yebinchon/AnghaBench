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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; } ;
struct ip_set {struct bitmap_ip* data; } ;
struct bitmap_ip {scalar_t__ elements; int hosts; scalar_t__ first_ip; int /*<<< orphan*/  members; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_ADT ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(const struct ip_set *set,
	       struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct bitmap_ip *map = set->data;
	struct nlattr *atd, *nested;
	u32 id, first = cb->args[2];

	atd = FUNC3(skb, IPSET_ATTR_ADT);
	if (!atd)
		return -EMSGSIZE;
	for (; cb->args[2] < map->elements; cb->args[2]++) {
		id = cb->args[2];
		if (!FUNC5(id, map->members))
			continue;
		nested = FUNC3(skb, IPSET_ATTR_DATA);
		if (!nested) {
			if (id == first) {
				FUNC4(skb, atd);
				return -EMSGSIZE;
			} else
				goto nla_put_failure;
		}
		FUNC0(skb, IPSET_ATTR_IP,
				FUNC1(map->first_ip + id * map->hosts));
		FUNC2(skb, nested);
	}
	FUNC2(skb, atd);
	/* Set listing finished */
	cb->args[2] = 0;
	return 0;

nla_put_failure:
	FUNC4(skb, nested);
	FUNC2(skb, atd);
	if (FUNC6(id == first)) {
		cb->args[2] = 0;
		return -EMSGSIZE;
	}
	return 0;
}