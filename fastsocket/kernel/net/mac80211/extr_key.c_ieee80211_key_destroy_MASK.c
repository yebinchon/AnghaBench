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
struct ieee80211_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_key*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct ieee80211_key *key,
				  bool delay_tailroom)
{
	if (!key)
		return;

	/*
	 * Synchronize so the TX path can no longer be using
	 * this key before we free/remove it.
	 */
	FUNC1();

	FUNC0(key, delay_tailroom);
}