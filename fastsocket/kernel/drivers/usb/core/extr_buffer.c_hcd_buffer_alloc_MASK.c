#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; int /*<<< orphan*/ * pool; TYPE_3__* driver; } ;
struct usb_bus {TYPE_2__* controller; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_mask; } ;

/* Variables and functions */
 int HCD_BUFFER_POOLS ; 
 int HCD_LOCAL_MEM ; 
 struct usb_hcd* FUNC0 (struct usb_bus*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 size_t* pool_max ; 

void *FUNC4(
	struct usb_bus 	*bus,
	size_t			size,
	gfp_t			mem_flags,
	dma_addr_t		*dma
)
{
	struct usb_hcd		*hcd = FUNC0(bus);
	int 			i;

	/* some USB hosts just use PIO */
	if (!bus->controller->dma_mask &&
	    !(hcd->driver->flags & HCD_LOCAL_MEM)) {
		*dma = ~(dma_addr_t) 0;
		return FUNC3(size, mem_flags);
	}

	for (i = 0; i < HCD_BUFFER_POOLS; i++) {
		if (size <= pool_max [i])
			return FUNC2(hcd->pool [i], mem_flags, dma);
	}
	return FUNC1(hcd->self.controller, size, dma, mem_flags);
}