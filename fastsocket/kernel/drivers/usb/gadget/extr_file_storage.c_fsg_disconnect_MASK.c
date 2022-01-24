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
struct usb_gadget {int dummy; } ;
struct fsg_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*) ; 
 int /*<<< orphan*/  FSG_STATE_DISCONNECT ; 
 struct fsg_dev* FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_gadget *gadget)
{
	struct fsg_dev		*fsg = FUNC1(gadget);

	FUNC0(fsg, "disconnect or port reset\n");
	FUNC2(fsg, FSG_STATE_DISCONNECT);
}