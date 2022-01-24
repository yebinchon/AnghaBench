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
typedef  int /*<<< orphan*/  u8 ;
struct usb_ctrlrequest {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int DBG_DATA_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u8 addr, const struct usb_ctrlrequest *req)
{
	char msg[DBG_DATA_MSG];

	if (req != NULL) {
		FUNC2(msg, sizeof(msg),
			  "%02X %02X %04X %04X %d", req->bRequestType,
			  req->bRequest, FUNC1(req->wValue),
			  FUNC1(req->wIndex), FUNC1(req->wLength));
		FUNC0(addr, "SETUP", 0, msg);
	}
}