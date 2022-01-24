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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int IPSTATS_MIB_INADDRERRORS ; 
#define  IPSTATS_MIB_INNOROUTES 129 
#define  IPSTATS_MIB_OUTNOROUTES 128 
 int IPV6_ADDR_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct dst_entry* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, u8 code, int ipstats_mib_noroutes)
{
	int type;
	struct dst_entry *dst = FUNC7(skb);
	switch (ipstats_mib_noroutes) {
	case IPSTATS_MIB_INNOROUTES:
		type = FUNC4(&FUNC5(skb)->daddr);
		if (type == IPV6_ADDR_ANY) {
			FUNC0(FUNC1(dst->dev), FUNC3(dst),
				      IPSTATS_MIB_INADDRERRORS);
			break;
		}
		/* FALLTHROUGH */
	case IPSTATS_MIB_OUTNOROUTES:
		FUNC0(FUNC1(dst->dev), FUNC3(dst),
			      ipstats_mib_noroutes);
		break;
	}
	FUNC2(skb, ICMPV6_DEST_UNREACH, code, 0, skb->dev);
	FUNC6(skb);
	return 0;
}