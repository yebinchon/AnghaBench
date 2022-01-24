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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_FROM_DEVICE ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,size_t,int,int) ; 

__attribute__((used)) static void
FUNC6(struct device *hwdev, dma_addr_t dev_addr,
		    size_t size, int dir, int target)
{
	phys_addr_t paddr = FUNC2(hwdev, dev_addr);

	FUNC0(dir == DMA_NONE);

	if (FUNC3(paddr)) {
		FUNC5(hwdev, FUNC4(paddr), size, dir, target);
		return;
	}

	if (dir != DMA_FROM_DEVICE)
		return;

	FUNC1(FUNC4(paddr), size);
}