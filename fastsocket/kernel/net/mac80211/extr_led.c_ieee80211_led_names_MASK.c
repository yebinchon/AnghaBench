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
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; int /*<<< orphan*/  radio_led_name; int /*<<< orphan*/  assoc_led_name; int /*<<< orphan*/  tx_led_name; int /*<<< orphan*/  rx_led_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ieee80211_local *local)
{
	FUNC0(local->rx_led_name, sizeof(local->rx_led_name),
		 "%srx", FUNC1(local->hw.wiphy));
	FUNC0(local->tx_led_name, sizeof(local->tx_led_name),
		 "%stx", FUNC1(local->hw.wiphy));
	FUNC0(local->assoc_led_name, sizeof(local->assoc_led_name),
		 "%sassoc", FUNC1(local->hw.wiphy));
	FUNC0(local->radio_led_name, sizeof(local->radio_led_name),
		 "%sradio", FUNC1(local->hw.wiphy));
}