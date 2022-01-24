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
struct tpt_led_trigger {int running; int /*<<< orphan*/  timer; } ;
struct ieee80211_local {struct tpt_led_trigger* tpt_led_trigger; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct tpt_led_trigger*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_local *local)
{
	struct tpt_led_trigger *tpt_trig = local->tpt_led_trigger;

	if (tpt_trig->running)
		return;

	/* reset traffic */
	FUNC3(local, tpt_trig);
	tpt_trig->running = true;

	FUNC2((unsigned long)local);
	FUNC0(&tpt_trig->timer, FUNC1(jiffies + HZ));
}