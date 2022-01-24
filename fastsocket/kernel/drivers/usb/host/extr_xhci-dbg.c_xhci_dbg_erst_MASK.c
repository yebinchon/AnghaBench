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
typedef  int u64 ;
struct xhci_hcd {int dummy; } ;
struct xhci_erst_entry {int /*<<< orphan*/  rsvd; int /*<<< orphan*/  seg_size; int /*<<< orphan*/  seg_addr; } ;
struct xhci_erst {int erst_dma_addr; int num_entries; struct xhci_erst_entry* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct xhci_hcd *xhci, struct xhci_erst *erst)
{
	u64 addr = erst->erst_dma_addr;
	int i;
	struct xhci_erst_entry *entry;

	for (i = 0; i < erst->num_entries; ++i) {
		entry = &erst->entries[i];
		FUNC4(xhci, "@%016llx %08x %08x %08x %08x\n",
			 addr,
			 FUNC2(FUNC1(entry->seg_addr)),
			 FUNC3(FUNC1(entry->seg_addr)),
			 FUNC0(entry->seg_size),
			 FUNC0(entry->rsvd));
		addr += sizeof(*entry);
	}
}