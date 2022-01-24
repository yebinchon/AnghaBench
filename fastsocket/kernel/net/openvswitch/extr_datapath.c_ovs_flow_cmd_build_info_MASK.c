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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sw_flow {int dummy; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sw_flow*) ; 
 int FUNC3 (struct sw_flow*,struct datapath*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct sw_flow *flow,
					       struct datapath *dp,
					       u32 pid, u32 seq, u8 cmd)
{
	struct sk_buff *skb;
	int retval;

	skb = FUNC2(flow);
	if (!skb)
		return FUNC1(-ENOMEM);

	retval = FUNC3(flow, dp, skb, pid, seq, 0, cmd);
	FUNC0(retval < 0);
	return skb;
}