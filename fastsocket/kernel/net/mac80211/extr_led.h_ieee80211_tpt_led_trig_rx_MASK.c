#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_local {TYPE_1__* tpt_led_trigger; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int rx_bytes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct ieee80211_local *local, __le16 fc, int bytes)
{
#ifdef CONFIG_MAC80211_LEDS
	if (local->tpt_led_trigger && ieee80211_is_data(fc))
		local->tpt_led_trigger->rx_bytes += bytes;
#endif
}