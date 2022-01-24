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

/* Variables and functions */
 scalar_t__ audit_backlog_limit ; 
 scalar_t__ audit_default ; 
 int /*<<< orphan*/  audit_skb_hold_queue ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb)
{
	if (audit_default &&
	    FUNC1(&audit_skb_hold_queue) < audit_backlog_limit)
		FUNC2(&audit_skb_hold_queue, skb);
	else
		FUNC0(skb);
}