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
struct ieee80211_device {int /*<<< orphan*/  wx_sem; int /*<<< orphan*/  wq; int /*<<< orphan*/  associate_retry_wq; int /*<<< orphan*/  associate_timer; int /*<<< orphan*/ * pDot11dInfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ieee80211_device *ieee)
{
	FUNC3(&ieee->wx_sem);
	if(NULL != ieee->pDot11dInfo)
	{
		FUNC4(ieee->pDot11dInfo);
		ieee->pDot11dInfo = NULL;
	}
	FUNC1(&ieee->associate_timer);

	FUNC0(&ieee->associate_retry_wq);
	FUNC2(ieee->wq);

	FUNC5(&ieee->wx_sem);
}