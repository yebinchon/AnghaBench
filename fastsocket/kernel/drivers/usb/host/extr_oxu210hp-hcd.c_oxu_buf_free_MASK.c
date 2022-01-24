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
struct oxu_hcd {int /*<<< orphan*/  mem_lock; scalar_t__* db_used; TYPE_1__* mem; } ;
struct ehci_qtd {void* buffer; scalar_t__ buffer_dma; scalar_t__ qtd_buffer_len; } ;
struct TYPE_2__ {int /*<<< orphan*/ * db_pool; } ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct oxu_hcd *oxu, struct ehci_qtd *qtd)
{
	int index;

	FUNC0(&oxu->mem_lock);

	index = (qtd->buffer - (void *) &oxu->mem->db_pool[0])
							 / BUFFER_SIZE;
	oxu->db_used[index] = 0;
	qtd->qtd_buffer_len = 0;
	qtd->buffer_dma = 0;
	qtd->buffer = NULL;

	FUNC1(&oxu->mem_lock);

	return;
}