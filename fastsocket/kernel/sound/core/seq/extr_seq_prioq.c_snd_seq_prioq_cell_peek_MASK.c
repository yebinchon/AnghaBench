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
struct snd_seq_prioq {struct snd_seq_event_cell* head; } ;
struct snd_seq_event_cell {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

struct snd_seq_event_cell *FUNC1(struct snd_seq_prioq * f)
{
	if (f == NULL) {
		FUNC0("oops: snd_seq_prioq_cell_in() called with NULL prioq\n");
		return NULL;
	}
	return f->head;
}