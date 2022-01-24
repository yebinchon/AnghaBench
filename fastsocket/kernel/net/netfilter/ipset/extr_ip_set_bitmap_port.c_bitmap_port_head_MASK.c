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
struct ip_set {scalar_t__ ref; struct bitmap_port* data; } ;
struct bitmap_port {scalar_t__ timeout; scalar_t__ memsize; int /*<<< orphan*/  last_port; int /*<<< orphan*/  first_port; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_MEMSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_PORT ; 
 int /*<<< orphan*/  IPSET_ATTR_PORT_TO ; 
 int /*<<< orphan*/  IPSET_ATTR_REFERENCES ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct ip_set *set, struct sk_buff *skb)
{
	const struct bitmap_port *map = set->data;
	struct nlattr *nested;

	nested = FUNC5(skb, IPSET_ATTR_DATA);
	if (!nested)
		goto nla_put_failure;
	FUNC0(skb, IPSET_ATTR_PORT, FUNC3(map->first_port));
	FUNC0(skb, IPSET_ATTR_PORT_TO, FUNC3(map->last_port));
	FUNC1(skb, IPSET_ATTR_REFERENCES, FUNC2(set->ref - 1));
	FUNC1(skb, IPSET_ATTR_MEMSIZE,
		      FUNC2(sizeof(*map) + map->memsize));
	if (FUNC6(map->timeout))
		FUNC1(skb, IPSET_ATTR_TIMEOUT, FUNC2(map->timeout));
	FUNC4(skb, nested);

	return 0;
nla_put_failure:
	return -EMSGSIZE;
}