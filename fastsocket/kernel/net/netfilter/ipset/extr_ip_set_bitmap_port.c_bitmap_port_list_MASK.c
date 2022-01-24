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
struct bitmap_port {scalar_t__ last_port; scalar_t__ first_port; int /*<<< orphan*/  members; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_ADT ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(const struct ip_set *set,
		 struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct bitmap_port *map = set->data;
	struct nlattr *atd, *nested;
	u16 id, first = cb->args[2];
	u16 last = map->last_port - map->first_port;

	atd = FUNC3(skb, IPSET_ATTR_ADT);
	if (!atd)
		return -EMSGSIZE;
	for (; cb->args[2] <= last; cb->args[2]++) {
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
		FUNC0(skb, IPSET_ATTR_PORT,
			      FUNC1(map->first_port + id));
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