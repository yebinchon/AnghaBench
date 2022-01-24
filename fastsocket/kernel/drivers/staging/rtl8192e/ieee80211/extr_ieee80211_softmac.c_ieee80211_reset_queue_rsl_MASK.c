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
struct TYPE_2__ {int /*<<< orphan*/ * txb; } ;
struct ieee80211_device {int /*<<< orphan*/  lock; scalar_t__ queue_stop; TYPE_1__ tx_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ieee80211_device *ieee)
{
	unsigned long flags;

	FUNC2(&ieee->lock,flags);
	FUNC1(ieee);
	if (ieee->tx_pending.txb){
		FUNC0(ieee->tx_pending.txb);
		ieee->tx_pending.txb = NULL;
	}
	ieee->queue_stop = 0;
	FUNC3(&ieee->lock,flags);

}