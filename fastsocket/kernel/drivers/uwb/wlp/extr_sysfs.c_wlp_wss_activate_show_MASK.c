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
struct wlp_wss {scalar_t__ state; int /*<<< orphan*/  mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ WLP_WSS_STATE_ACTIVE ; 
 int FUNC0 (struct wlp_wss*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,scalar_t__,char*) ; 

ssize_t FUNC4(struct wlp_wss *wss, char *buf)
{
	int result = 0;

	if (FUNC1(&wss->mutex))
		goto out;
	if (wss->state >= WLP_WSS_STATE_ACTIVE)
		result = FUNC0(wss, buf, PAGE_SIZE);
	else
		result = FUNC3(buf, PAGE_SIZE, "No local WSS active.\n");
	result += FUNC3(buf + result, PAGE_SIZE - result,
			"\n\n"
			"# echo WSSID SECURE_STATUS ACCEPT_ENROLLMENT "
			"NAME #create new WSS\n"
			"# echo WSSID [DEV ADDR] #enroll in and activate "
			"existing WSS, can request registrar\n"
			"#\n"
			"# WSSID is a 16 byte hex array. Eg. 12 A3 3B ... \n"
			"# SECURE_STATUS 0 - unsecure, 1 - secure (default)\n"
			"# ACCEPT_ENROLLMENT 0 - no, 1 - yes (default)\n"
			"# NAME is the text string identifying the WSS\n"
			"# DEV ADDR is the device address of neighbor "
			"that should be registrar. Eg. 32:AB\n");

	FUNC2(&wss->mutex);
out:
	return result;

}