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
struct usb_line6 {int /*<<< orphan*/  urb_listen; struct usb_line6* buffer_listen; struct usb_line6* buffer_message; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_line6* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *interface)
{
	struct usb_line6 *line6;

	if (interface == NULL)
		return;
	line6 = FUNC2(interface);
	if (line6 == NULL)
		return;

	/* free buffer memory first: */
	FUNC0(line6->buffer_message);
	FUNC0(line6->buffer_listen);

	/* then free URBs: */
	FUNC1(line6->urb_listen);

	/* make sure the device isn't destructed twice: */
	FUNC3(interface, NULL);

	/* free interface data: */
	FUNC0(line6);
}