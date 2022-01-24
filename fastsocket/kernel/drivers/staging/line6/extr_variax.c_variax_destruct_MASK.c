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
struct usb_line6_variax {int /*<<< orphan*/  activate_timer; int /*<<< orphan*/  buffer_activate; int /*<<< orphan*/  dumpreq; struct usb_line6 line6; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct usb_line6_variax* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *interface)
{
	struct usb_line6_variax *variax = FUNC5(interface);
	struct usb_line6 *line6;

	if (variax == NULL)
		return;
	line6 = &variax->line6;
	if (line6 == NULL)
		return;
	FUNC2(line6);

	/* free dump request data: */
	FUNC4(&variax->dumpreq, 2);
	FUNC4(&variax->dumpreq, 1);
	FUNC3(&variax->dumpreq);

	FUNC1(variax->buffer_activate);
	FUNC0(&variax->activate_timer);
}