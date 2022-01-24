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
struct autofs_wait_queue {int /*<<< orphan*/  queue; int /*<<< orphan*/ * name; int /*<<< orphan*/  status; struct autofs_wait_queue* next; } ;
struct autofs_sb_info {int catatonic; int /*<<< orphan*/  dirhash; int /*<<< orphan*/ * pipe; struct autofs_wait_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct autofs_sb_info *sbi)
{
	struct autofs_wait_queue *wq, *nwq;

	FUNC0(("autofs: entering catatonic mode\n"));

	sbi->catatonic = 1;
	wq = sbi->queues;
	sbi->queues = NULL;	/* Erase all wait queues */
	while ( wq ) {
		nwq = wq->next;
		wq->status = -ENOENT; /* Magic is gone - report failure */
		FUNC3(wq->name);
		wq->name = NULL;
		FUNC4(&wq->queue);
		wq = nwq;
	}
	FUNC2(sbi->pipe);	/* Close the pipe */
	sbi->pipe = NULL;
	FUNC1(&sbi->dirhash); /* Remove all dentry pointers */
}