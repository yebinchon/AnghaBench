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
struct snd_seq_prioq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cells; struct snd_seq_event_cell* tail; struct snd_seq_event_cell* head; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct snd_seq_event_cell *FUNC3(struct snd_seq_prioq *f)
{
	struct snd_seq_event_cell *cell;
	unsigned long flags;

	if (f == NULL) {
		FUNC0("oops: snd_seq_prioq_cell_in() called with NULL prioq\n");
		return NULL;
	}
	FUNC1(&f->lock, flags);

	cell = f->head;
	if (cell) {
		f->head = cell->next;

		/* reset tail if this was the last element */
		if (f->tail == cell)
			f->tail = NULL;

		cell->next = NULL;
		f->cells--;
	}

	FUNC2(&f->lock, flags);
	return cell;
}