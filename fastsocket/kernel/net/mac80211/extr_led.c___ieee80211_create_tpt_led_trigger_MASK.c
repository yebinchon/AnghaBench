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
struct TYPE_4__ {char* name; } ;
struct tpt_led_trigger {char* name; unsigned int blink_table_len; unsigned int want; int /*<<< orphan*/  timer; struct ieee80211_tpt_blink const* blink_table; TYPE_2__ trig; } ;
struct ieee80211_tpt_blink {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {struct tpt_led_trigger* tpt_led_trigger; TYPE_1__ hw; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct tpt_led_trigger*) ; 
 struct ieee80211_local* FUNC1 (struct ieee80211_hw*) ; 
 struct tpt_led_trigger* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  tpt_trig_timer ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

char *FUNC6(struct ieee80211_hw *hw,
				unsigned int flags,
				const struct ieee80211_tpt_blink *blink_table,
				unsigned int blink_table_len)
{
	struct ieee80211_local *local = FUNC1(hw);
	struct tpt_led_trigger *tpt_trig;

	if (FUNC0(local->tpt_led_trigger))
		return NULL;

	tpt_trig = FUNC2(sizeof(struct tpt_led_trigger), GFP_KERNEL);
	if (!tpt_trig)
		return NULL;

	FUNC4(tpt_trig->name, sizeof(tpt_trig->name),
		 "%stpt", FUNC5(local->hw.wiphy));

	tpt_trig->trig.name = tpt_trig->name;

	tpt_trig->blink_table = blink_table;
	tpt_trig->blink_table_len = blink_table_len;
	tpt_trig->want = flags;

	FUNC3(&tpt_trig->timer, tpt_trig_timer, (unsigned long)local);

	local->tpt_led_trigger = tpt_trig;

	return tpt_trig->name;
}