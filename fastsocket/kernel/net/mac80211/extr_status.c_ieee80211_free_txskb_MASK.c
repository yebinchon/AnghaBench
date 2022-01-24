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
struct ieee80211_local {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct ieee80211_local* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct sk_buff*,int) ; 

void FUNC3(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	struct ieee80211_local *local = FUNC1(hw);

	FUNC2(local, skb, true);
	FUNC0(skb);
}