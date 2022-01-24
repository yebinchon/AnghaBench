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

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_ACTION_ATTR_SET ; 
#define  OVS_KEY_ATTR_IPV4_TUNNEL 128 
 struct nlattr* FUNC0 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr const*) ; 
 int FUNC5 (struct nlattr const*) ; 
 int FUNC6 (struct sk_buff*,struct nlattr*) ; 

__attribute__((used)) static int FUNC7(const struct nlattr *a, struct sk_buff *skb)
{
	const struct nlattr *ovs_key = FUNC0(a);
	int key_type = FUNC5(ovs_key);
	struct nlattr *start;
	int err;

	switch (key_type) {
	case OVS_KEY_ATTR_IPV4_TUNNEL:
		start = FUNC3(skb, OVS_ACTION_ATTR_SET);
		if (!start)
			return -EMSGSIZE;

		err = FUNC6(skb, FUNC0(ovs_key));
		if (err)
			return err;
		FUNC2(skb, start);
		break;
	default:
		if (FUNC4(skb, OVS_ACTION_ATTR_SET, FUNC1(a), ovs_key))
			return -EMSGSIZE;
		break;
	}

	return 0;
}