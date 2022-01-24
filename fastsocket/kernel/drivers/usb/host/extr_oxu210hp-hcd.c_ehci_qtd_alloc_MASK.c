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
struct oxu_hcd {int* qtd_used; int /*<<< orphan*/  mem_lock; TYPE_1__* mem; } ;
struct ehci_qtd {int /*<<< orphan*/  qtd_dma; int /*<<< orphan*/  qtd_list; void* hw_alt_next; void* hw_next; int /*<<< orphan*/  hw_token; } ;
struct TYPE_2__ {int /*<<< orphan*/ * qtd_pool; } ;

/* Variables and functions */
 void* EHCI_LIST_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int QTD_NUM ; 
 int /*<<< orphan*/  QTD_STS_HALT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_qtd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_qtd*) ; 

__attribute__((used)) static struct ehci_qtd *FUNC6(struct oxu_hcd *oxu)
{
	int i;
	struct ehci_qtd *qtd = NULL;

	FUNC3(&oxu->mem_lock);

	for (i = 0; i < QTD_NUM; i++)
		if (!oxu->qtd_used[i])
			break;

	if (i < QTD_NUM) {
		qtd = (struct ehci_qtd *) &oxu->mem->qtd_pool[i];
		FUNC2(qtd, 0, sizeof *qtd);

		qtd->hw_token = FUNC1(QTD_STS_HALT);
		qtd->hw_next = EHCI_LIST_END;
		qtd->hw_alt_next = EHCI_LIST_END;
		FUNC0(&qtd->qtd_list);

		qtd->qtd_dma = FUNC5(qtd);

		oxu->qtd_used[i] = 1;
	}

	FUNC4(&oxu->mem_lock);

	return qtd;
}