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
typedef  int gro_result_t ;

/* Variables and functions */
#define  GRO_DROP 132 
#define  GRO_HELD 131 
#define  GRO_MERGED 130 
#define  GRO_MERGED_FREE 129 
#define  GRO_NORMAL 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

gro_result_t FUNC2(gro_result_t ret, struct sk_buff *skb)
{
	switch (ret) {
	case GRO_NORMAL:
		if (FUNC1(skb))
			ret = GRO_DROP;
		break;

	case GRO_DROP:
	case GRO_MERGED_FREE:
		FUNC0(skb);
		break;

	case GRO_HELD:
	case GRO_MERGED:
		break;
	}

	return ret;
}