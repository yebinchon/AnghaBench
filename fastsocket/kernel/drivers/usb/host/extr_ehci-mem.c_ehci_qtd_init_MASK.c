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
struct ehci_qtd {int /*<<< orphan*/  qtd_list; void* hw_alt_next; void* hw_next; int /*<<< orphan*/  hw_token; int /*<<< orphan*/  qtd_dma; } ;
struct ehci_hcd {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 void* FUNC0 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QTD_STS_HALT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_qtd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC4(struct ehci_hcd *ehci, struct ehci_qtd *qtd,
				  dma_addr_t dma)
{
	FUNC3 (qtd, 0, sizeof *qtd);
	qtd->qtd_dma = dma;
	qtd->hw_token = FUNC2 (QTD_STS_HALT);
	qtd->hw_next = FUNC0(ehci);
	qtd->hw_alt_next = FUNC0(ehci);
	FUNC1 (&qtd->qtd_list);
}