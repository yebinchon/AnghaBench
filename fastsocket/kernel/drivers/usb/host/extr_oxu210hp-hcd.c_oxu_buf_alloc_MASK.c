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
struct oxu_hcd {int* db_used; int /*<<< orphan*/  mem_lock; TYPE_1__* mem; } ;
struct ehci_qtd {int qtd_buffer_len; void* buffer; int /*<<< orphan*/  buffer_dma; } ;
struct TYPE_2__ {int /*<<< orphan*/ * db_pool; } ;

/* Variables and functions */
 int BUFFER_NUM ; 
 int BUFFER_SIZE ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxu_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct oxu_hcd *oxu, struct ehci_qtd *qtd, int len)
{
	int n_blocks;	/* minium blocks needed to hold len */
	int a_blocks;	/* blocks allocated */
	int i, j;

	/* Don't allocte bigger than supported */
	if (len > BUFFER_SIZE * BUFFER_NUM) {
		FUNC1(oxu, "buffer too big (%d)\n", len);
		return -ENOMEM;
	}

	FUNC2(&oxu->mem_lock);

	/* Number of blocks needed to hold len */
	n_blocks = (len + BUFFER_SIZE - 1) / BUFFER_SIZE;

	/* Round the number of blocks up to the power of 2 */
	for (a_blocks = 1; a_blocks < n_blocks; a_blocks <<= 1)
		;

	/* Find a suitable available data buffer */
	for (i = 0; i < BUFFER_NUM;
			i += FUNC0(a_blocks, (int)oxu->db_used[i])) {

		/* Check all the required blocks are available */
		for (j = 0; j < a_blocks; j++)
			if (oxu->db_used[i + j])
				break;

		if (j != a_blocks)
			continue;

		/* Allocate blocks found! */
		qtd->buffer = (void *) &oxu->mem->db_pool[i];
		qtd->buffer_dma = FUNC4(qtd->buffer);

		qtd->qtd_buffer_len = BUFFER_SIZE * a_blocks;
		oxu->db_used[i] = a_blocks;

		FUNC3(&oxu->mem_lock);

		return 0;
	}

	/* Failed */

	FUNC3(&oxu->mem_lock);

	return -ENOMEM;
}