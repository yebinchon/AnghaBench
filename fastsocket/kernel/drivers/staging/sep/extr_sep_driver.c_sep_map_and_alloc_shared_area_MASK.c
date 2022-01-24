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
struct sep_device {scalar_t__ shared_bus; int /*<<< orphan*/  shared_addr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(struct sep_device *sep,
							unsigned long size)
{
	/* shared_addr = ioremap_nocache(0xda00000,shared_area_size); */
	sep->shared_addr = FUNC0(&sep->pdev->dev, size,
					&sep->shared_bus, GFP_KERNEL);

	if (!sep->shared_addr) {
		FUNC1("sep_driver :shared memory dma_alloc_coherent failed\n");
		return -ENOMEM;
	}
	/* set the bus address of the shared area */
	FUNC1("sep: shared_addr %ld bytes @%p (bus %08llx)\n",
		size, sep->shared_addr, (unsigned long long)sep->shared_bus);
	return 0;
}