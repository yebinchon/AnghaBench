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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int queues; } ;
struct ieee80211_local {TYPE_1__ hw; int /*<<< orphan*/ * pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ieee80211_local *local)
{
	struct sk_buff *skb;
	int i;

	for (i = 0; i < local->hw.queues; i++) {
		while ((skb = FUNC1(&local->pending[i])) != NULL)
			FUNC0(&local->hw, skb);
	}
}