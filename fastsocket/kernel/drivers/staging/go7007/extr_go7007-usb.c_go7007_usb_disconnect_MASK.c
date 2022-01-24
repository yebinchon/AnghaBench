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
struct usb_interface {int dummy; } ;
struct urb {struct go7007_usb* transfer_buffer; } ;
struct go7007_usb {struct urb* intr_urb; struct urb** audio_urbs; struct urb** video_urbs; } ;
struct go7007 {struct go7007_usb* hpi_context; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC1 (struct go7007_usb*) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 struct go7007* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *intf)
{
	struct go7007 *go = FUNC3(intf);
	struct go7007_usb *usb = go->hpi_context;
	struct urb *vurb, *aurb;
	int i;

	go->status = STATUS_SHUTDOWN;
	FUNC4(usb->intr_urb);

	/* Free USB-related structs */
	for (i = 0; i < 8; ++i) {
		vurb = usb->video_urbs[i];
		if (vurb) {
			FUNC4(vurb);
			if (vurb->transfer_buffer)
				FUNC1(vurb->transfer_buffer);
			FUNC2(vurb);
		}
		aurb = usb->audio_urbs[i];
		if (aurb) {
			FUNC4(aurb);
			if (aurb->transfer_buffer)
				FUNC1(aurb->transfer_buffer);
			FUNC2(aurb);
		}
	}
	FUNC1(usb->intr_urb->transfer_buffer);
	FUNC2(usb->intr_urb);

	FUNC1(go->hpi_context);

	FUNC0(go);
}