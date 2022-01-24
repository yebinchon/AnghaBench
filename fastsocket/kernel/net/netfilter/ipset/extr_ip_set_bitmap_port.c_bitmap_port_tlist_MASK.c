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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;
struct ip_set {struct bitmap_port* data; } ;
struct bitmap_port {scalar_t__ last_port; scalar_t__ first_port; unsigned long* members; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_ADT ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_PORT ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlattr*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(const struct ip_set *set,
		  struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct bitmap_port *map = set->data;
	struct nlattr *adt, *nested;
	u16 id, first = cb->args[2];
	u16 last = map->last_port - map->first_port;
	const unsigned long *members = map->members;

	adt = FUNC7(skb, IPSET_ATTR_ADT);
	if (!adt)
		return -EMSGSIZE;
	for (; cb->args[2] <= last; cb->args[2]++) {
		id = cb->args[2];
		if (!FUNC5(members[id]))
			continue;
		nested = FUNC7(skb, IPSET_ATTR_DATA);
		if (!nested) {
			if (id == first) {
				FUNC8(skb, adt);
				return -EMSGSIZE;
			} else
				goto nla_put_failure;
		}
		FUNC0(skb, IPSET_ATTR_PORT,
			      FUNC3(map->first_port + id));
		FUNC1(skb, IPSET_ATTR_TIMEOUT,
			      FUNC2(FUNC4(members[id])));
		FUNC6(skb, nested);
	}
	FUNC6(skb, adt);

	/* Set listing finished */
	cb->args[2] = 0;

	return 0;

nla_put_failure:
	FUNC8(skb, nested);
	FUNC6(skb, adt);
	if (FUNC9(id == first)) {
		cb->args[2] = 0;
		return -EMSGSIZE;
	}
	return 0;
}