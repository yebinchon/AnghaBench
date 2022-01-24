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
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_probe_response {int dummy; } ;
struct ieee80211_hdr_4addr {int /*<<< orphan*/  frame_ctl; } ;
struct ieee80211_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  IEEE80211_STYPE_BEACON 129 
#define  IEEE80211_STYPE_PROBE_RESP 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*,struct ieee80211_probe_response*,struct ieee80211_rx_stats*) ; 

void FUNC4(struct ieee80211_device *ieee,
		      struct ieee80211_hdr_4addr *header,
		      struct ieee80211_rx_stats *stats)
{
	switch (FUNC2(header->frame_ctl)) {

	case IEEE80211_STYPE_BEACON:
		FUNC0("received BEACON (%d)\n",
				     FUNC2(header->frame_ctl));
		FUNC1("Beacon\n");
		FUNC3(
			ieee, (struct ieee80211_probe_response *)header, stats);
		break;

	case IEEE80211_STYPE_PROBE_RESP:
		FUNC0("received PROBE RESPONSE (%d)\n",
				     FUNC2(header->frame_ctl));
		FUNC1("Probe response\n");
		FUNC3(
			ieee, (struct ieee80211_probe_response *)header, stats);
		break;
	}
}