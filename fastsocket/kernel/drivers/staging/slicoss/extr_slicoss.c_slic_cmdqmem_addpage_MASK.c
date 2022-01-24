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
typedef  int u32 ;
struct slic_cmdqmem {size_t pagecnt; int** pages; int /*<<< orphan*/ * dma_pages; } ;
struct adapter {int /*<<< orphan*/  pcidev; struct slic_cmdqmem cmdqmem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t SLIC_CMDQ_MAXPAGES ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 *FUNC2(struct adapter *adapter)
{
	struct slic_cmdqmem *cmdqmem = &adapter->cmdqmem;
	u32 *pageaddr;

	if (cmdqmem->pagecnt >= SLIC_CMDQ_MAXPAGES)
		return NULL;
	pageaddr = FUNC1(adapter->pcidev,
					PAGE_SIZE,
					&cmdqmem->dma_pages[cmdqmem->pagecnt]);
	if (!pageaddr)
		return NULL;
#ifndef CONFIG_X86_64
	FUNC0(((u32) pageaddr & 0xFFFFF000) == (u32) pageaddr);
#endif
	cmdqmem->pages[cmdqmem->pagecnt] = pageaddr;
	cmdqmem->pagecnt++;
	return pageaddr;
}