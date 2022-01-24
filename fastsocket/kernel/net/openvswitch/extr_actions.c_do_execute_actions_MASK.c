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
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  OVS_ACTION_ATTR_OUTPUT 133 
#define  OVS_ACTION_ATTR_POP_VLAN 132 
#define  OVS_ACTION_ATTR_PUSH_VLAN 131 
#define  OVS_ACTION_ATTR_SAMPLE 130 
#define  OVS_ACTION_ATTR_SET 129 
#define  OVS_ACTION_ATTR_USERSPACE 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct datapath*,struct sk_buff*,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const*) ; 
 int FUNC5 (struct nlattr const*) ; 
 struct nlattr* FUNC6 (struct nlattr const*,int*) ; 
 int FUNC7 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC8 (struct datapath*,struct sk_buff*,struct nlattr const*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct datapath*,struct sk_buff*,struct nlattr const*) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct datapath *dp, struct sk_buff *skb,
			const struct nlattr *attr, int len, bool keep_skb)
{
	/* Every output action needs a separate clone of 'skb', but the common
	 * case is just a single output action, so that doing a clone and
	 * then freeing the original skbuff is wasteful.  So the following code
	 * is slightly obscure just to avoid that. */
	int prev_port = -1;
	const struct nlattr *a;
	int rem;

	for (a = attr, rem = len; rem > 0;
	     a = FUNC6(a, &rem)) {
		int err = 0;

		if (prev_port != -1) {
			FUNC1(dp, FUNC12(skb, GFP_ATOMIC), prev_port);
			prev_port = -1;
		}

		switch (FUNC7(a)) {
		case OVS_ACTION_ATTR_OUTPUT:
			prev_port = FUNC5(a);
			break;

		case OVS_ACTION_ATTR_USERSPACE:
			FUNC8(dp, skb, a);
			break;

		case OVS_ACTION_ATTR_PUSH_VLAN:
			err = FUNC10(skb, FUNC4(a));
			if (FUNC13(err)) /* skb already freed. */
				return err;
			break;

		case OVS_ACTION_ATTR_POP_VLAN:
			err = FUNC9(skb);
			break;

		case OVS_ACTION_ATTR_SET:
			err = FUNC2(skb, FUNC4(a));
			break;

		case OVS_ACTION_ATTR_SAMPLE:
			err = FUNC11(dp, skb, a);
			break;
		}

		if (FUNC13(err)) {
			FUNC3(skb);
			return err;
		}
	}

	if (prev_port != -1) {
		if (keep_skb)
			skb = FUNC12(skb, GFP_ATOMIC);

		FUNC1(dp, skb, prev_port);
	} else if (!keep_skb)
		FUNC0(skb);

	return 0;
}