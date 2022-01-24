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
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct datapath*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct datapath *dp, u32 pid,
					     u32 seq, u8 cmd)
{
	struct sk_buff *skb;
	int retval;

	skb = FUNC1(FUNC4(), GFP_KERNEL);
	if (!skb)
		return FUNC0(-ENOMEM);

	retval = FUNC3(dp, skb, pid, seq, 0, cmd);
	if (retval < 0) {
		FUNC2(skb);
		return FUNC0(retval);
	}
	return skb;
}