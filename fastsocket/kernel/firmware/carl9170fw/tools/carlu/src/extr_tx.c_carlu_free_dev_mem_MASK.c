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
struct frame {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct carlu {unsigned int dma_chunk_size; unsigned int used_dma_chunks; int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  tx_pending; } ;
struct _carl9170_tx_superframe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct carlu *ar,
				 struct frame *frame)
{
	struct _carl9170_tx_superframe *txp = (void *)frame->data;
	unsigned int len, chunks;

	len = FUNC2(frame->len, ar->dma_chunk_size);
	chunks = len / ar->dma_chunk_size;

	FUNC0(ar->mem_lock);
	ar->used_dma_chunks -= chunks;
	ar->tx_pending--;
	FUNC1(ar->mem_lock);
}