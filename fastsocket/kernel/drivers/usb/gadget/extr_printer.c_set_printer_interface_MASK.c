#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct printer_dev {int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; TYPE_1__* out_ep; TYPE_1__* in_ep; int /*<<< orphan*/  gadget; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; struct printer_dev* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct printer_dev*,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs_ep_in_desc ; 
 int /*<<< orphan*/  fs_ep_out_desc ; 
 int /*<<< orphan*/  hs_ep_in_desc ; 
 int /*<<< orphan*/  hs_ep_out_desc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct printer_dev *dev)
{
	int			result = 0;

	dev->in = FUNC1(dev->gadget, &hs_ep_in_desc, &fs_ep_in_desc);
	dev->in_ep->driver_data = dev;

	dev->out = FUNC1(dev->gadget, &hs_ep_out_desc, &fs_ep_out_desc);
	dev->out_ep->driver_data = dev;

	result = FUNC3(dev->in_ep, dev->in);
	if (result != 0) {
		FUNC0(dev, "enable %s --> %d\n", dev->in_ep->name, result);
		goto done;
	}

	result = FUNC3(dev->out_ep, dev->out);
	if (result != 0) {
		FUNC0(dev, "enable %s --> %d\n", dev->in_ep->name, result);
		goto done;
	}

done:
	/* on error, disable any endpoints  */
	if (result != 0) {
		(void) FUNC2(dev->in_ep);
		(void) FUNC2(dev->out_ep);
		dev->in = NULL;
		dev->out = NULL;
	}

	/* caller is responsible for cleanup on error */
	return result;
}