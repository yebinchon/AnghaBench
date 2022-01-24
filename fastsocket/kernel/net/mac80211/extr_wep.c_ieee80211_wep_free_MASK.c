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
struct ieee80211_local {int /*<<< orphan*/  wep_rx_tfm; int /*<<< orphan*/  wep_tx_tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ieee80211_local *local)
{
	if (!FUNC0(local->wep_tx_tfm))
		FUNC1(local->wep_tx_tfm);
	if (!FUNC0(local->wep_rx_tfm))
		FUNC1(local->wep_rx_tfm);
}