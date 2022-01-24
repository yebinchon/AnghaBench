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
struct dma_debug_entry {size_t size; int direction; int /*<<< orphan*/  type; int /*<<< orphan*/  dev_addr; scalar_t__ paddr; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_debug_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,void*) ; 
 int /*<<< orphan*/  dma_debug_page ; 
 int /*<<< orphan*/  dma_debug_single ; 
 struct dma_debug_entry* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  global_disable ; 
 void* FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct device *dev, struct page *page, size_t offset,
			size_t size, int direction, dma_addr_t dma_addr,
			bool map_single)
{
	struct dma_debug_entry *entry;

	if (FUNC8(global_disable))
		return;

	if (FUNC8(FUNC5(dev, dma_addr)))
		return;

	entry = FUNC4();
	if (!entry)
		return;

	entry->dev       = dev;
	entry->type      = dma_debug_page;
	entry->paddr     = FUNC7(page) + offset;
	entry->dev_addr  = dma_addr;
	entry->size      = size;
	entry->direction = direction;

	if (map_single)
		entry->type = dma_debug_single;

	if (!FUNC0(page)) {
		void *addr = FUNC6(page) + offset;

		FUNC3(dev, addr);
		FUNC2(dev, addr, size);
	}

	FUNC1(entry);
}