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
struct ieee80211_txb {size_t nr_frags; scalar_t__* fragments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t i ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_txb*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct ieee80211_txb *txb) {
	//int i;
	if (FUNC2(!txb))
		return;
#if 0
	for (i = 0; i < txb->nr_frags; i++)
		if (txb->fragments[i])
			dev_kfree_skb_any(txb->fragments[i]);
#endif
	FUNC1(txb);
}