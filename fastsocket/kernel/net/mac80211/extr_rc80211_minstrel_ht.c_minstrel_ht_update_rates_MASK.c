#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct minstrel_priv {TYPE_2__* hw; } ;
struct minstrel_ht_sta {int /*<<< orphan*/  sta; int /*<<< orphan*/  max_prob_rate; int /*<<< orphan*/  max_tp_rate2; int /*<<< orphan*/  max_tp_rate; } ;
struct ieee80211_sta_rates {TYPE_1__* rate; } ;
struct TYPE_4__ {int max_rates; } ;
struct TYPE_3__ {int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ieee80211_sta_rates* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct minstrel_priv*,struct minstrel_ht_sta*,struct ieee80211_sta_rates*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,struct ieee80211_sta_rates*) ; 

__attribute__((used)) static void
FUNC3(struct minstrel_priv *mp, struct minstrel_ht_sta *mi)
{
	struct ieee80211_sta_rates *rates;
	int i = 0;

	rates = FUNC0(sizeof(*rates), GFP_ATOMIC);
	if (!rates)
		return;

	/* Start with max_tp_rate */
	FUNC1(mp, mi, rates, i++, mi->max_tp_rate);

	if (mp->hw->max_rates >= 3) {
		/* At least 3 tx rates supported, use max_tp_rate2 next */
		FUNC1(mp, mi, rates, i++, mi->max_tp_rate2);
	}

	if (mp->hw->max_rates >= 2) {
		/*
		 * At least 2 tx rates supported, use max_prob_rate next */
		FUNC1(mp, mi, rates, i++, mi->max_prob_rate);
	}

	rates->rate[i].idx = -1;
	FUNC2(mp->hw, mi->sta, rates);
}