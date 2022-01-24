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
struct snd_seq_prioq {scalar_t__ cells; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_seq_prioq* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct snd_seq_prioq *FUNC3(void)
{
	struct snd_seq_prioq *f;

	f = FUNC0(sizeof(*f), GFP_KERNEL);
	if (f == NULL) {
		FUNC1("oops: malloc failed for snd_seq_prioq_new()\n");
		return NULL;
	}
	
	FUNC2(&f->lock);
	f->head = NULL;
	f->tail = NULL;
	f->cells = 0;
	
	return f;
}