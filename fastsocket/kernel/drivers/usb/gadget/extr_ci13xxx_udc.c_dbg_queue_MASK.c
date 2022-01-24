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
struct usb_request {int /*<<< orphan*/  length; int /*<<< orphan*/  no_interrupt; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int DBG_DATA_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u8 addr, const struct usb_request *req, int status)
{
	char msg[DBG_DATA_MSG];

	if (req != NULL) {
		FUNC1(msg, sizeof(msg),
			  "%d %d", !req->no_interrupt, req->length);
		FUNC0(addr, "QUEUE", status, msg);
	}
}