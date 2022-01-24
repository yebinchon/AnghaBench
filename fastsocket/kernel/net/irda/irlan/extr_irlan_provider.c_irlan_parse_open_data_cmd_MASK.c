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
struct irlan_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_OPEN_DATA_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct irlan_cb*) ; 
 int FUNC1 (struct irlan_cb*,int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC2(struct irlan_cb *self, struct sk_buff *skb)
{
	int ret;

	ret = FUNC1(self, CMD_OPEN_DATA_CHANNEL, skb);

	/* Open data channel */
	FUNC0(self);

	return ret;
}