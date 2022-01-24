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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct list_set {int size; int timeout; int dsize; } ;
struct ip_set {int ref; struct list_set* data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_MEMSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_REFERENCES ; 
 int /*<<< orphan*/  IPSET_ATTR_SIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct ip_set *set, struct sk_buff *skb)
{
	const struct list_set *map = set->data;
	struct nlattr *nested;

	nested = FUNC3(skb, IPSET_ATTR_DATA);
	if (!nested)
		goto nla_put_failure;
	FUNC0(skb, IPSET_ATTR_SIZE, FUNC1(map->size));
	if (FUNC4(map->timeout))
		FUNC0(skb, IPSET_ATTR_TIMEOUT, FUNC1(map->timeout));
	FUNC0(skb, IPSET_ATTR_REFERENCES, FUNC1(set->ref - 1));
	FUNC0(skb, IPSET_ATTR_MEMSIZE,
		      FUNC1(sizeof(*map) + map->size * map->dsize));
	FUNC2(skb, nested);

	return 0;
nla_put_failure:
	return -EMSGSIZE;
}