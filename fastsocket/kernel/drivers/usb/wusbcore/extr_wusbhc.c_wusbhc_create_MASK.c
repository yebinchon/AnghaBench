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
struct wusbhc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  trust_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  WUSB_TRUST_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC2 (struct wusbhc*) ; 
 int FUNC3 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC4 (struct wusbhc*) ; 
 int FUNC5 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC6 (struct wusbhc*) ; 
 int FUNC7 (struct wusbhc*) ; 

int FUNC8(struct wusbhc *wusbhc)
{
	int result = 0;

	wusbhc->trust_timeout = WUSB_TRUST_TIMEOUT_MS;
	FUNC0(&wusbhc->mutex);
	result = FUNC3(wusbhc);
	if (result < 0)
		goto error_mmcie_create;
	result = FUNC1(wusbhc);
	if (result < 0)
		goto error_devconnect_create;
	result = FUNC5(wusbhc);
	if (result < 0)
		goto error_rh_create;
	result = FUNC7(wusbhc);
	if (result < 0)
		goto error_sec_create;
	return 0;

error_sec_create:
	FUNC6(wusbhc);
error_rh_create:
	FUNC2(wusbhc);
error_devconnect_create:
	FUNC4(wusbhc);
error_mmcie_create:
	return result;
}