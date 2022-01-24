#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_obex {int /*<<< orphan*/  port; int /*<<< orphan*/  port_num; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ) ; 
 struct f_obex* FUNC1 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_function *f)
{
	struct f_obex	*obex = FUNC1(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	FUNC0(cdev, "obex ttyGS%d disable\n", obex->port_num);
	FUNC2(&obex->port);
}