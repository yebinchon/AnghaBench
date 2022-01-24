#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_composite_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct gserial {TYPE_2__ func; } ;
struct f_obex {int /*<<< orphan*/  port_num; int /*<<< orphan*/  can_activate; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,int) ; 
 struct f_obex* FUNC1 (struct gserial*) ; 
 int FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct gserial *g)
{
	struct f_obex		*obex = FUNC1(g);
	struct usb_composite_dev *cdev = g->func.config->cdev;
	int			status;

	if (!obex->can_activate)
		return;

	status = FUNC2(&g->func);
	if (status)
		FUNC0(cdev, "obex ttyGS%d function activate --> %d\n",
			obex->port_num, status);
}