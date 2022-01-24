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
struct wusbhc {int (* set_num_dnts ) (struct wusbhc*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/ * wuie_host_info; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct wusbhc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC4 (struct wusbhc*) ; 
 int FUNC5 (struct wusbhc*) ; 
 int FUNC6 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC7 (struct wusbhc*) ; 
 int FUNC8 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC9 (struct wusbhc*) ; 

int FUNC10(struct wusbhc *wusbhc)
{
	int result;
	struct device *dev = wusbhc->dev;

	FUNC0(wusbhc->wuie_host_info != NULL);

	result = FUNC6(wusbhc);
	if (result < 0) {
		FUNC1(dev, "cannot establish cluster reservation: %d\n",
			result);
		goto error_rsv_establish;
	}

	result = FUNC3(wusbhc);
	if (result < 0) {
		FUNC1(dev, "error enabling device connections: %d\n", result);
		goto error_devconnect_start;
	}

	result = FUNC8(wusbhc);
	if (result < 0) {
		FUNC1(dev, "error starting security in the HC: %d\n", result);
		goto error_sec_start;
	}
	/* FIXME: the choice of the DNTS parameters is somewhat
	 * arbitrary */
	result = wusbhc->set_num_dnts(wusbhc, 0, 15);
	if (result < 0) {
		FUNC1(dev, "Cannot set DNTS parameters: %d\n", result);
		goto error_set_num_dnts;
	}
	result = FUNC5(wusbhc);
	if (result < 0) {
		FUNC1(dev, "error starting wusbch: %d\n", result);
		goto error_wusbhc_start;
	}

	return 0;

error_wusbhc_start:
	FUNC9(wusbhc);
error_set_num_dnts:
error_sec_start:
	FUNC4(wusbhc);
error_devconnect_start:
	FUNC7(wusbhc);
error_rsv_establish:
	return result;
}