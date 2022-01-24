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
struct ip_set {int ref; struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int first_ip; int last_ip; int dsize; int timeout; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_ATTR_IP_TO ; 
 int /*<<< orphan*/  IPSET_ATTR_MEMSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_REFERENCES ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct ip_set *set, struct sk_buff *skb)
{
	const struct bitmap_ipmac *map = set->data;
	struct nlattr *nested;

	nested = FUNC4(skb, IPSET_ATTR_DATA);
	if (!nested)
		goto nla_put_failure;
	FUNC0(skb, IPSET_ATTR_IP, FUNC2(map->first_ip));
	FUNC0(skb, IPSET_ATTR_IP_TO, FUNC2(map->last_ip));
	FUNC1(skb, IPSET_ATTR_REFERENCES, FUNC2(set->ref - 1));
	FUNC1(skb, IPSET_ATTR_MEMSIZE,
		      FUNC2(sizeof(*map)
			    + (map->last_ip - map->first_ip + 1) * map->dsize));
	if (FUNC5(map->timeout))
		FUNC1(skb, IPSET_ATTR_TIMEOUT, FUNC2(map->timeout));
	FUNC3(skb, nested);

	return 0;
nla_put_failure:
	return -EMSGSIZE;
}