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
struct wusbhc {int /*<<< orphan*/  mutex; } ;
struct wusb_dev {int /*<<< orphan*/  entry_ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wusbhc*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
	FUNC1(&wusbhc->mutex);
	wusb_dev->entry_ts = jiffies;
	FUNC0(wusbhc);
	FUNC2(&wusbhc->mutex);
}