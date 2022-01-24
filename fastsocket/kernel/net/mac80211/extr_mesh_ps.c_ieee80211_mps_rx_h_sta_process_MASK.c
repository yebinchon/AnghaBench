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
struct sta_info {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sta_info*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sta_info*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*,struct ieee80211_hdr*) ; 

void FUNC6(struct sta_info *sta,
				    struct ieee80211_hdr *hdr)
{
	if (FUNC3(hdr->addr1) &&
	    FUNC1(hdr->frame_control)) {
		/*
		 * individually addressed QoS Data/Null frames contain
		 * peer link-specific PS mode towards the local STA
		 */
		FUNC5(sta, hdr);

		/* check for mesh Peer Service Period trigger frames */
		FUNC2(FUNC0(hdr),
					       sta, false, false);
	} else {
		/*
		 * can only determine non-peer PS mode
		 * (see IEEE802.11-2012 8.2.4.1.7)
		 */
		FUNC4(sta, hdr);
	}
}