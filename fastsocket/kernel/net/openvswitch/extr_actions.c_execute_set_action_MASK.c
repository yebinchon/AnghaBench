#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {void* mark; void* priority; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tun_key; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
#define  OVS_KEY_ATTR_ETHERNET 135 
#define  OVS_KEY_ATTR_IPV4 134 
#define  OVS_KEY_ATTR_IPV4_TUNNEL 133 
#define  OVS_KEY_ATTR_IPV6 132 
#define  OVS_KEY_ATTR_PRIORITY 131 
#define  OVS_KEY_ATTR_SKB_MARK 130 
#define  OVS_KEY_ATTR_TCP 129 
#define  OVS_KEY_ATTR_UDP 128 
 int /*<<< orphan*/  FUNC1 (struct nlattr const*) ; 
 void* FUNC2 (struct nlattr const*) ; 
 int FUNC3 (struct nlattr const*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb,
				 const struct nlattr *nested_attr)
{
	int err = 0;

	switch (FUNC3(nested_attr)) {
	case OVS_KEY_ATTR_PRIORITY:
		skb->priority = FUNC2(nested_attr);
		break;

	case OVS_KEY_ATTR_SKB_MARK:
		skb->mark = FUNC2(nested_attr);
		break;

	case OVS_KEY_ATTR_IPV4_TUNNEL:
		FUNC0(skb)->tun_key = FUNC1(nested_attr);
		break;

	case OVS_KEY_ATTR_ETHERNET:
		err = FUNC4(skb, FUNC1(nested_attr));
		break;

	case OVS_KEY_ATTR_IPV4:
		err = FUNC5(skb, FUNC1(nested_attr));
		break;

	case OVS_KEY_ATTR_IPV6:
		err = FUNC6(skb, FUNC1(nested_attr));
		break;

	case OVS_KEY_ATTR_TCP:
		err = FUNC7(skb, FUNC1(nested_attr));
		break;

	case OVS_KEY_ATTR_UDP:
		err = FUNC8(skb, FUNC1(nested_attr));
		break;
	}

	return err;
}