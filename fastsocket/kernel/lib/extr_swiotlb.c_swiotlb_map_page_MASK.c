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
struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_NONE ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ,size_t) ; 
 void* io_tlb_overflow_buffer ; 
 void* FUNC2 (struct device*,scalar_t__,size_t,int) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  swiotlb_force ; 
 int /*<<< orphan*/  FUNC6 (struct device*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,void*) ; 

dma_addr_t FUNC8(struct device *dev, struct page *page,
			    unsigned long offset, size_t size,
			    enum dma_data_direction dir,
			    struct dma_attrs *attrs)
{
	phys_addr_t phys = FUNC3(page) + offset;
	dma_addr_t dev_addr = FUNC5(dev, phys);
	void *map;

	FUNC0(dir == DMA_NONE);
	/*
	 * If the address happens to be in the device's DMA window,
	 * we can safely return the device addr and not worry about bounce
	 * buffering it.
	 */
	if (FUNC1(dev, dev_addr, size) && !swiotlb_force)
		return dev_addr;

	/*
	 * Oh well, have to allocate and map a bounce buffer.
	 */
	map = FUNC2(dev, phys, size, dir);
	if (!map) {
		FUNC6(dev, size, dir, 1);
		map = io_tlb_overflow_buffer;
	}

	dev_addr = FUNC7(dev, map);

	/*
	 * Ensure that the address returned is DMA'ble
	 */
	if (!FUNC1(dev, dev_addr, size))
		FUNC4("map_single: bounce buffer is not DMA'ble");

	return dev_addr;
}