#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tq_nalloc; scalar_t__ tq_minalloc; scalar_t__ tq_maxalloc; int /*<<< orphan*/  tq_lock; int /*<<< orphan*/  tq_maxalloc_wait; int /*<<< orphan*/  tq_maxalloc_cv; TYPE_2__* tq_freelist; } ;
typedef  TYPE_1__ taskq_t ;
struct TYPE_7__ {struct TYPE_7__* tqent_next; } ;
typedef  TYPE_2__ taskq_ent_t ;

/* Variables and functions */
 int KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ hz ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static taskq_ent_t *
FUNC5(taskq_t *tq, int tqflags)
{
	taskq_ent_t *t;
	int rv;

again:	if ((t = tq->tq_freelist) != NULL && tq->tq_nalloc >= tq->tq_minalloc) {
		tq->tq_freelist = t->tqent_next;
	} else {
		if (tq->tq_nalloc >= tq->tq_maxalloc) {
			if (!(tqflags & KM_SLEEP))
				return (NULL);

			/*
			 * We don't want to exceed tq_maxalloc, but we can't
			 * wait for other tasks to complete (and thus free up
			 * task structures) without risking deadlock with
			 * the caller.  So, we just delay for one second
			 * to throttle the allocation rate. If we have tasks
			 * complete before one second timeout expires then
			 * taskq_ent_free will signal us and we will
			 * immediately retry the allocation.
			 */
			tq->tq_maxalloc_wait++;
#ifdef __FreeBSD__
			rv = cv_timedwait(&tq->tq_maxalloc_cv,
			    &tq->tq_lock, hz);
#else
			rv = FUNC0(&tq->tq_maxalloc_cv,
			    &tq->tq_lock, FUNC1() + hz);
#endif
			tq->tq_maxalloc_wait--;
			if (rv > 0)
				goto again;		/* signaled */
		}
		FUNC4(&tq->tq_lock);

		t = FUNC2(sizeof (taskq_ent_t), tqflags & KM_SLEEP);

		FUNC3(&tq->tq_lock);
		if (t != NULL)
			tq->tq_nalloc++;
	}
	return (t);
}