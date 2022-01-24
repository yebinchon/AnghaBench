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
struct usb_request {int dummy; } ;
struct usb_ep {int /*<<< orphan*/  name; } ;
struct fsg_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct usb_request* FUNC1 (struct usb_ep*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fsg_dev *fsg, struct usb_ep *ep,
		struct usb_request **preq)
{
	*preq = FUNC1(ep, GFP_ATOMIC);
	if (*preq)
		return 0;
	FUNC0(fsg, "can't allocate request for %s\n", ep->name);
	return -ENOMEM;
}