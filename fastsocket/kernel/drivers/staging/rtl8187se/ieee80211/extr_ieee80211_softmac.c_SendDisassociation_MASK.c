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
struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_device {struct ieee80211_network current_network; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct ieee80211_network*,struct ieee80211_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct ieee80211_device*) ; 

void
FUNC2(
        struct ieee80211_device *ieee,
        u8*                     asSta,
        u8                      asRsn
)
{
        struct ieee80211_network *beacon = &ieee->current_network;
        struct sk_buff *skb;
        skb = FUNC0(beacon,ieee,asRsn);
        if (skb){
                FUNC1(skb, ieee);
                //dev_kfree_skb_any(skb);//edit by thomas
        }
}