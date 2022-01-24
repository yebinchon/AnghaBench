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
struct TYPE_3__ {int busnum; int /*<<< orphan*/  controller; } ;
struct usb_hcd {unsigned int irq; scalar_t__ rsrc_start; TYPE_2__* driver; TYPE_1__ self; int /*<<< orphan*/  irq_descr; } ;
struct TYPE_4__ {char* description; int flags; scalar_t__ irq; } ;

/* Variables and functions */
 int HCD_MEMORY ; 
 unsigned long IRQF_DISABLED ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  usb_hcd_irq ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd,
		unsigned int irqnum, unsigned long irqflags)
{
	int retval;

	if (hcd->driver->irq) {

		/* IRQF_DISABLED doesn't work as advertised when used together
		 * with IRQF_SHARED. As usb_hcd_irq() will always disable
		 * interrupts we can remove it here.
		 */
		if (irqflags & IRQF_SHARED)
			irqflags &= ~IRQF_DISABLED;

		FUNC3(hcd->irq_descr, sizeof(hcd->irq_descr), "%s:usb%d",
				hcd->driver->description, hcd->self.busnum);
		retval = FUNC2(irqnum, &usb_hcd_irq, irqflags,
				hcd->irq_descr, hcd);
		if (retval != 0) {
			FUNC0(hcd->self.controller,
					"request interrupt %d failed\n",
					irqnum);
			return retval;
		}
		hcd->irq = irqnum;
		FUNC1(hcd->self.controller, "irq %d, %s 0x%08llx\n", irqnum,
				(hcd->driver->flags & HCD_MEMORY) ?
					"io mem" : "io base",
					(unsigned long long)hcd->rsrc_start);
	} else {
		hcd->irq = -1;
		if (hcd->rsrc_start)
			FUNC1(hcd->self.controller, "%s 0x%08llx\n",
					(hcd->driver->flags & HCD_MEMORY) ?
					"io mem" : "io base",
					(unsigned long long)hcd->rsrc_start);
	}
	return 0;
}