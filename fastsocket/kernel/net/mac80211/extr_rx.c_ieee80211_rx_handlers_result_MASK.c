#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_supported_band {struct ieee80211_rate* bitrates; } ;
struct ieee80211_rx_status {size_t band; int flag; size_t rate_idx; } ;
struct ieee80211_rx_data {TYPE_6__* sdata; int /*<<< orphan*/  skb; TYPE_4__* sta; TYPE_3__* local; } ;
struct ieee80211_rate {int dummy; } ;
typedef  int ieee80211_rx_result ;
struct TYPE_12__ {TYPE_5__* local; } ;
struct TYPE_11__ {int /*<<< orphan*/  rx_handlers_queued; int /*<<< orphan*/  rx_handlers_drop; } ;
struct TYPE_10__ {int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_8__ {TYPE_1__* wiphy; } ;
struct TYPE_9__ {TYPE_2__ hw; } ;
struct TYPE_7__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ieee80211_rx_status* FUNC1 (int /*<<< orphan*/ ) ; 
#define  RX_CONTINUE 131 
#define  RX_DROP_MONITOR 130 
#define  RX_DROP_UNUSABLE 129 
 int RX_FLAG_HT ; 
 int RX_FLAG_VHT ; 
#define  RX_QUEUED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_rx_data*,struct ieee80211_rate*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_rx_data *rx,
					 ieee80211_rx_result res)
{
	switch (res) {
	case RX_DROP_MONITOR:
		FUNC0(rx->sdata->local->rx_handlers_drop);
		if (rx->sta)
			rx->sta->rx_dropped++;
		/* fall through */
	case RX_CONTINUE: {
		struct ieee80211_rate *rate = NULL;
		struct ieee80211_supported_band *sband;
		struct ieee80211_rx_status *status;

		status = FUNC1((rx->skb));

		sband = rx->local->hw.wiphy->bands[status->band];
		if (!(status->flag & RX_FLAG_HT) &&
		    !(status->flag & RX_FLAG_VHT))
			rate = &sband->bitrates[status->rate_idx];

		FUNC3(rx, rate);
		break;
		}
	case RX_DROP_UNUSABLE:
		FUNC0(rx->sdata->local->rx_handlers_drop);
		if (rx->sta)
			rx->sta->rx_dropped++;
		FUNC2(rx->skb);
		break;
	case RX_QUEUED:
		FUNC0(rx->sdata->local->rx_handlers_queued);
		break;
	}
}