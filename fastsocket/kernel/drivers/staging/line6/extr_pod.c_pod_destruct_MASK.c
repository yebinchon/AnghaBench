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
struct usb_line6_pod {int /*<<< orphan*/  buffer_versionreq; int /*<<< orphan*/  dumpreq; struct usb_line6 line6; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usb_line6_pod* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *interface)
{
	struct usb_line6_pod *pod = FUNC3(interface);
	struct usb_line6 *line6;

	if (pod == NULL)
		return;
	line6 = &pod->line6;
	if (line6 == NULL)
		return;
	FUNC1(line6);

	/* free dump request data: */
	FUNC2(&pod->dumpreq);

	FUNC0(pod->buffer_versionreq);
}