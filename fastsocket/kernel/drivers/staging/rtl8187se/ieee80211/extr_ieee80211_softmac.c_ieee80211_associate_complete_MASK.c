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
struct ieee80211_device {int /*<<< orphan*/  associate_complete_wq; int /*<<< orphan*/  wq; int /*<<< orphan*/  state; int /*<<< orphan*/  associate_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IEEE80211_LINKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_device *ieee)
{
	int i;
	FUNC1(&ieee->associate_timer);

	for(i = 0; i < 6; i++) {
	  //ieee->seq_ctrl[i] = 0;
	}
	ieee->state = IEEE80211_LINKED;
	FUNC0("Successfully associated\n");

	FUNC2(ieee->wq, &ieee->associate_complete_wq);
}