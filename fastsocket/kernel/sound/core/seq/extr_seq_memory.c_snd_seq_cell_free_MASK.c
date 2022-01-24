#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  output_sleep; struct snd_seq_event_cell* free; } ;
struct TYPE_4__ {int len; struct snd_seq_event_cell* ptr; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
struct TYPE_6__ {TYPE_2__ data; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; TYPE_3__ event; struct snd_seq_pool* pool; } ;

/* Variables and functions */
 int SNDRV_SEQ_EXT_CHAINED ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_pool*,struct snd_seq_event_cell*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (struct snd_seq_pool*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct snd_seq_event_cell * cell)
{
	unsigned long flags;
	struct snd_seq_pool *pool;

	if (FUNC1(!cell))
		return;
	pool = cell->pool;
	if (FUNC1(!pool))
		return;

	FUNC4(&pool->lock, flags);
	FUNC0(pool, cell);
	if (FUNC2(&cell->event)) {
		if (cell->event.data.ext.len & SNDRV_SEQ_EXT_CHAINED) {
			struct snd_seq_event_cell *curp, *nextptr;
			curp = cell->event.data.ext.ptr;
			for (; curp; curp = nextptr) {
				nextptr = curp->next;
				curp->next = pool->free;
				FUNC0(pool, curp);
			}
		}
	}
	if (FUNC6(&pool->output_sleep)) {
		/* has enough space now? */
		if (FUNC3(pool))
			FUNC7(&pool->output_sleep);
	}
	FUNC5(&pool->lock, flags);
}