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
struct sk_buff {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NF_BR_POST_ROUTING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_BRIDGE ; 
 int /*<<< orphan*/  br_dev_queue_push_xmit ; 

int FUNC1(struct sk_buff *skb)
{
	return FUNC0(PF_BRIDGE, NF_BR_POST_ROUTING, skb, NULL, skb->dev,
		       br_dev_queue_push_xmit);

}