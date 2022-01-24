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
struct set_telem {int /*<<< orphan*/  timeout; } ;
struct set_elem {scalar_t__ id; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;
struct list_set {scalar_t__ size; int /*<<< orphan*/  timeout; } ;
struct ip_set {struct list_set* data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_ADT ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_NAME ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 scalar_t__ IPSET_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct set_elem* FUNC7 (struct list_set const*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct list_set const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlattr*) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(const struct ip_set *set,
	      struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct list_set *map = set->data;
	struct nlattr *atd, *nested;
	u32 i, first = cb->args[2];
	const struct set_elem *e;

	atd = FUNC6(skb, IPSET_ATTR_ADT);
	if (!atd)
		return -EMSGSIZE;
	for (; cb->args[2] < map->size; cb->args[2]++) {
		i = cb->args[2];
		e = FUNC7(map, i);
		if (e->id == IPSET_INVALID_ID)
			goto finish;
		if (FUNC11(map->timeout) && FUNC8(map, i))
			continue;
		nested = FUNC6(skb, IPSET_ATTR_DATA);
		if (!nested) {
			if (i == first) {
				FUNC9(skb, atd);
				return -EMSGSIZE;
			} else
				goto nla_put_failure;
		}
		FUNC1(skb, IPSET_ATTR_NAME,
			       FUNC3(e->id));
		if (FUNC11(map->timeout)) {
			const struct set_telem *te =
				(const struct set_telem *) e;
			FUNC0(skb, IPSET_ATTR_TIMEOUT,
				      FUNC2(FUNC4(te->timeout)));
		}
		FUNC5(skb, nested);
	}
finish:
	FUNC5(skb, atd);
	/* Set listing finished */
	cb->args[2] = 0;
	return 0;

nla_put_failure:
	FUNC9(skb, nested);
	FUNC5(skb, atd);
	if (FUNC10(i == first)) {
		cb->args[2] = 0;
		return -EMSGSIZE;
	}
	return 0;
}