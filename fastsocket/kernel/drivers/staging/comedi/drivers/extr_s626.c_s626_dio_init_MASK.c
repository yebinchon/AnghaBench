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
typedef  scalar_t__ uint16_t ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int /*<<< orphan*/  WRDOut; int /*<<< orphan*/  WREdgSel; int /*<<< orphan*/  WRCapSel; int /*<<< orphan*/  WRIntSel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  LP_MISC1 ; 
 int MISC1_NOEDCAP ; 
 scalar_t__ S626_DIO_BANKS ; 
 TYPE_1__* diopriv ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev)
{
	uint16_t group;
	struct comedi_subdevice *s;

	/*  Prepare to treat writes to WRCapSel as capture disables. */
	FUNC0(dev, LP_MISC1, MISC1_NOEDCAP);

	/*  For each group of sixteen channels ... */
	for (group = 0; group < S626_DIO_BANKS; group++) {
		s = dev->subdevices + 2 + group;
		FUNC0(dev, diopriv->WRIntSel, 0);	/*  Disable all interrupts. */
		FUNC0(dev, diopriv->WRCapSel, 0xFFFF);	/*  Disable all event */
		/*  captures. */
		FUNC0(dev, diopriv->WREdgSel, 0);	/*  Init all DIOs to */
		/*  default edge */
		/*  polarity. */
		FUNC0(dev, diopriv->WRDOut, 0);	/*  Program all outputs */
		/*  to inactive state. */
	}
	FUNC1("s626_dio_init: DIO initialized \n");
}