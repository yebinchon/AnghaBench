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
struct wusbhc {int dummy; } ;
struct whc {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct urb {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIPE_BULK 131 
#define  PIPE_CONTROL 130 
#define  PIPE_INTERRUPT 129 
#define  PIPE_ISOCHRONOUS 128 
 int FUNC0 (struct whc*,struct urb*,int) ; 
 int FUNC1 (struct whc*,struct urb*,int) ; 
 struct wusbhc* FUNC2 (struct usb_hcd*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct whc* FUNC4 (struct wusbhc*) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *usb_hcd, struct urb *urb, int status)
{
	struct wusbhc *wusbhc = FUNC2(usb_hcd);
	struct whc *whc = FUNC4(wusbhc);
	int ret;

	switch (FUNC3(urb->pipe)) {
	case PIPE_INTERRUPT:
		ret = FUNC1(whc, urb, status);
		break;
	case PIPE_ISOCHRONOUS:
		ret = -ENOTSUPP;
		break;
	case PIPE_CONTROL:
	case PIPE_BULK:
	default:
		ret = FUNC0(whc, urb, status);
		break;
	};

	return ret;
}