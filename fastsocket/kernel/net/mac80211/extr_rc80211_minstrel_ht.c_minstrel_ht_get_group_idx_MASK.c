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
struct ieee80211_tx_rate {int idx; int flags; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int IEEE80211_TX_RC_40_MHZ_WIDTH ; 
 int IEEE80211_TX_RC_SHORT_GI ; 
 int MCS_GROUP_RATES ; 

__attribute__((used)) static int
FUNC1(struct ieee80211_tx_rate *rate)
{
	return FUNC0((rate->idx / MCS_GROUP_RATES) + 1,
			 !!(rate->flags & IEEE80211_TX_RC_SHORT_GI),
			 !!(rate->flags & IEEE80211_TX_RC_40_MHZ_WIDTH));
}