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
struct sk_buff {int data; int len; } ;
struct ieee80211_mmie {scalar_t__ element_id; int length; int /*<<< orphan*/  key_id; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  da; } ;
struct ieee80211_hdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ WLAN_EID_MMIE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb)
{
	struct ieee80211_mgmt *hdr = (struct ieee80211_mgmt *) skb->data;
	struct ieee80211_mmie *mmie;

	if (skb->len < 24 + sizeof(*mmie) || !FUNC1(hdr->da))
		return -1;

	if (!FUNC0((struct ieee80211_hdr *) hdr))
		return -1; /* not a robust management frame */

	mmie = (struct ieee80211_mmie *)
		(skb->data + skb->len - sizeof(*mmie));
	if (mmie->element_id != WLAN_EID_MMIE ||
	    mmie->length != sizeof(*mmie) - 2)
		return -1;

	return FUNC2(mmie->key_id);
}