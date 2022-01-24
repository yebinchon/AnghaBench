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
struct ieee80211_device {scalar_t__ state; int actscanning; int /*<<< orphan*/  lock; int /*<<< orphan*/  bGlobalDomain; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_NOLINK ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 scalar_t__ FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct ieee80211_device *ieee)
{
	unsigned long flags;
	//
	// Ref: 802.11d 11.1.3.3
	// STA shall not start a BSS unless properly formed Beacon frame including a Country IE.
	//
	if(FUNC1(ieee) && !FUNC0(ieee))
	{
		if(! ieee->bGlobalDomain)
		{
			return;
		}
	}
	/* check if we have already found the net we
	 * are interested in (if any).
	 * if not (we are disassociated and we are not
	 * in associating / authenticating phase) start the background scanning.
	 */
	FUNC2(ieee);

	/* ensure no-one start an associating process (thus setting
	 * the ieee->state to ieee80211_ASSOCIATING) while we
	 * have just cheked it and we are going to enable scan.
	 * The ieee80211_new_net function is always called with
	 * lock held (from both ieee80211_softmac_check_all_nets and
	 * the rx path), so we cannot be in the middle of such function
	 */
	FUNC4(&ieee->lock, flags);

	if (ieee->state == IEEE80211_NOLINK){
		ieee->actscanning = true;
		FUNC3(ieee);
	}
	FUNC5(&ieee->lock, flags);
}