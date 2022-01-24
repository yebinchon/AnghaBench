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
struct wusb_ckhdid {int dummy; } ;
struct wusbhc {int /*<<< orphan*/  pal; int /*<<< orphan*/  mutex; struct wusb_ckhdid chid; scalar_t__ active; } ;
typedef  int /*<<< orphan*/  chid ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct wusb_ckhdid const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wusb_ckhdid_zero ; 

int FUNC5(struct wusbhc *wusbhc, const struct wusb_ckhdid *chid)
{
	int result = 0;

	if (FUNC0(chid, &wusb_ckhdid_zero, sizeof(chid)) == 0)
		chid = NULL;

	FUNC1(&wusbhc->mutex);
	if (chid) {
		if (wusbhc->active) {
			FUNC2(&wusbhc->mutex);
			return -EBUSY;
		}
		wusbhc->chid = *chid;
	}
	FUNC2(&wusbhc->mutex);

	if (chid)
		result = FUNC3(&wusbhc->pal);
	else
		FUNC4(&wusbhc->pal);
	return result;
}