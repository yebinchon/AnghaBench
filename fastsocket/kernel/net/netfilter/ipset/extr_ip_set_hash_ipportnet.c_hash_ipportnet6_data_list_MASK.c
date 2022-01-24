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
struct hash_ipportnet6_elem {int /*<<< orphan*/  proto; int /*<<< orphan*/  cidr; int /*<<< orphan*/  port; int /*<<< orphan*/  ip2; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSET_ATTR_CIDR2 ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_ATTR_IP2 ; 
 int /*<<< orphan*/  IPSET_ATTR_PORT ; 
 int /*<<< orphan*/  IPSET_ATTR_PROTO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct sk_buff *skb,
			  const struct hash_ipportnet6_elem *data)
{
	FUNC0(skb, IPSET_ATTR_IP, &data->ip);
	FUNC0(skb, IPSET_ATTR_IP2, &data->ip2);
	FUNC1(skb, IPSET_ATTR_PORT, data->port);
	FUNC2(skb, IPSET_ATTR_CIDR2, data->cidr);
	FUNC2(skb, IPSET_ATTR_PROTO, data->proto);
	return 0;

nla_put_failure:
	return 1;
}