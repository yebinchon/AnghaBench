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
struct hash_netport6_telem {int /*<<< orphan*/  timeout; int /*<<< orphan*/  ip; } ;
struct hash_netport6_elem {int /*<<< orphan*/  proto; int /*<<< orphan*/  cidr; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSET_ATTR_CIDR ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_ATTR_PORT ; 
 int /*<<< orphan*/  IPSET_ATTR_PROTO ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(struct sk_buff *skb,
			 const struct hash_netport6_elem *data)
{
	const struct hash_netport6_telem *e =
		(const struct hash_netport6_telem *)data;

	FUNC0(skb, IPSET_ATTR_IP, &e->ip);
	FUNC1(skb, IPSET_ATTR_PORT, data->port);
	FUNC3(skb, IPSET_ATTR_CIDR, data->cidr);
	FUNC3(skb, IPSET_ATTR_PROTO, data->proto);
	FUNC2(skb, IPSET_ATTR_TIMEOUT,
		      FUNC4(FUNC5(e->timeout)));
	return 0;

nla_put_failure:
	return 1;
}