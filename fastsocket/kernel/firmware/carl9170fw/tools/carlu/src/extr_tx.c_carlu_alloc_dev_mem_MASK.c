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
struct frame {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct carlu {unsigned int dma_chunk_size; scalar_t__ tx_pending; scalar_t__ dma_chunks; scalar_t__ used_dma_chunks; int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  cookie; } ;
struct TYPE_2__ {scalar_t__ cookie; } ;
struct _carl9170_tx_superframe {TYPE_1__ s; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct carlu *ar,
				struct frame *frame)
{
	struct _carl9170_tx_superframe *txp = (void *)frame->data;
	unsigned int len, chunks;

	len = FUNC2(frame->len, ar->dma_chunk_size);
	chunks = len / ar->dma_chunk_size;

	FUNC0(ar->mem_lock);
	if (ar->tx_pending >= ar->dma_chunks ||
	    ar->used_dma_chunks + chunks >= ar->dma_chunks) {
		FUNC1(ar->mem_lock);
		return -ENOSPC;
	}

	ar->used_dma_chunks += chunks;
	ar->tx_pending++;
	txp->s.cookie = ar->cookie++;
	FUNC1(ar->mem_lock);

	return 0;
}