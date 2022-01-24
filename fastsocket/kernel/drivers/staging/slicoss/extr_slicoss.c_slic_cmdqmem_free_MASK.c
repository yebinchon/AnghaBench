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
struct slic_cmdqmem {int /*<<< orphan*/ * dma_pages; scalar_t__* pages; } ;
struct adapter {int /*<<< orphan*/  pcidev; struct slic_cmdqmem cmdqmem; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SLIC_CMDQ_MAXPAGES ; 
 int /*<<< orphan*/  FUNC0 (struct slic_cmdqmem*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct adapter *adapter)
{
	struct slic_cmdqmem *cmdqmem = &adapter->cmdqmem;
	int i;

	for (i = 0; i < SLIC_CMDQ_MAXPAGES; i++) {
		if (cmdqmem->pages[i]) {
			FUNC1(adapter->pcidev,
					    PAGE_SIZE,
					    (void *) cmdqmem->pages[i],
					    cmdqmem->dma_pages[i]);
		}
	}
	FUNC0(cmdqmem, 0, sizeof(struct slic_cmdqmem));
}