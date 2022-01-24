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
struct dma_debug_entry {size_t size; int /*<<< orphan*/  direction; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  paddr; struct device* dev; int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_debug_entry*) ; 
 int /*<<< orphan*/  dma_debug_coherent ; 
 struct dma_debug_entry* FUNC1 () ; 
 int /*<<< orphan*/  global_disable ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void FUNC4(struct device *dev, size_t size,
			      dma_addr_t dma_addr, void *virt)
{
	struct dma_debug_entry *entry;

	if (FUNC2(global_disable))
		return;

	if (FUNC2(virt == NULL))
		return;

	entry = FUNC1();
	if (!entry)
		return;

	entry->type      = dma_debug_coherent;
	entry->dev       = dev;
	entry->paddr     = FUNC3(virt);
	entry->size      = size;
	entry->dev_addr  = dma_addr;
	entry->direction = DMA_BIDIRECTIONAL;

	FUNC0(entry);
}