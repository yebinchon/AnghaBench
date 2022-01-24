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
struct usb_line6 {int dummy; } ;
struct usb_line6_toneport {struct usb_line6 line6; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_line6*) ; 
 struct usb_line6_toneport* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC2(struct usb_interface *interface)
{
	struct usb_line6_toneport *toneport = FUNC1(interface);
	struct usb_line6 *line6;

	if (toneport == NULL)
		return;
	line6 = &toneport->line6;
	if (line6 == NULL)
		return;
	FUNC0(line6);
}