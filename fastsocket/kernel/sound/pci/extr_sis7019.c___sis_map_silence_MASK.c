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
struct sis7019 {int /*<<< orphan*/  silence_users; int /*<<< orphan*/ * suspend_state; int /*<<< orphan*/  pci; int /*<<< orphan*/  silence_dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sis7019 *sis)
{
	/* Helper function: must hold sis->voice_lock on entry */
	if (!sis->silence_users)
		sis->silence_dma_addr = FUNC0(sis->pci,
						sis->suspend_state[0],
						4096, PCI_DMA_TODEVICE);
	sis->silence_users++;
}