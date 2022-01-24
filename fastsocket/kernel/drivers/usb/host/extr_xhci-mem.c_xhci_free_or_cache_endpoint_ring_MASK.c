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
struct xhci_virt_device {int num_rings_cached; TYPE_1__* eps; int /*<<< orphan*/ ** ring_cache; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ring; } ;

/* Variables and functions */
 int XHCI_MAX_RINGS_CACHED ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 

void FUNC2(struct xhci_hcd *xhci,
		struct xhci_virt_device *virt_dev,
		unsigned int ep_index)
{
	int rings_cached;

	rings_cached = virt_dev->num_rings_cached;
	if (rings_cached < XHCI_MAX_RINGS_CACHED) {
		virt_dev->ring_cache[rings_cached] =
			virt_dev->eps[ep_index].ring;
		virt_dev->num_rings_cached++;
		FUNC0(xhci, "Cached old ring, "
				"%d ring%s cached\n",
				virt_dev->num_rings_cached,
				(virt_dev->num_rings_cached > 1) ? "s" : "");
	} else {
		FUNC1(xhci, virt_dev->eps[ep_index].ring);
		FUNC0(xhci, "Ring cache full (%d rings), "
				"freeing ring\n",
				virt_dev->num_rings_cached);
	}
	virt_dev->eps[ep_index].ring = NULL;
}