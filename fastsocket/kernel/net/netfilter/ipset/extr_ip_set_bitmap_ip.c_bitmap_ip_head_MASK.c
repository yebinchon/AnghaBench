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
struct ip_set {scalar_t__ ref; struct bitmap_ip* data; } ;
struct bitmap_ip {int netmask; scalar_t__ timeout; scalar_t__ memsize; scalar_t__ last_ip; scalar_t__ first_ip; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_ATTR_IP_TO ; 
 int /*<<< orphan*/  IPSET_ATTR_MEMSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_NETMASK ; 
 int /*<<< orphan*/  IPSET_ATTR_REFERENCES ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct ip_set *set, struct sk_buff *skb)
{
	const struct bitmap_ip *map = set->data;
	struct nlattr *nested;

	nested = FUNC5(skb, IPSET_ATTR_DATA);
	if (!nested)
		goto nla_put_failure;
	FUNC0(skb, IPSET_ATTR_IP, FUNC3(map->first_ip));
	FUNC0(skb, IPSET_ATTR_IP_TO, FUNC3(map->last_ip));
	if (map->netmask != 32)
		FUNC2(skb, IPSET_ATTR_NETMASK, map->netmask);
	FUNC1(skb, IPSET_ATTR_REFERENCES, FUNC3(set->ref - 1));
	FUNC1(skb, IPSET_ATTR_MEMSIZE,
		      FUNC3(sizeof(*map) + map->memsize));
	if (FUNC6(map->timeout))
		FUNC1(skb, IPSET_ATTR_TIMEOUT, FUNC3(map->timeout));
	FUNC4(skb, nested);

	return 0;
nla_put_failure:
	return -EMSGSIZE;
}