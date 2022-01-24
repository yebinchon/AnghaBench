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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static __be16 FUNC2(struct sk_buff *skb)
{
	const u8 *pvfc;
	u8 buf;

	pvfc = FUNC1(skb, 0, 1, &buf);
	if (!pvfc)
		return FUNC0(0);
	/* Look at IP version field */
	switch (*pvfc >> 4) {
	case 4:
		return FUNC0(ETH_P_IP);
	case 6:
		return FUNC0(ETH_P_IPV6);
	}
	return FUNC0(0);
}