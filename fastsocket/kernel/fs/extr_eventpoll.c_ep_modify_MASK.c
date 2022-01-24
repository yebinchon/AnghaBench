#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct eventpoll {int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; int /*<<< orphan*/  rdllist; } ;
struct epoll_event {unsigned int events; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_4__* file; } ;
struct TYPE_5__ {unsigned int events; int /*<<< orphan*/  data; } ;
struct epitem {int /*<<< orphan*/  rdllink; TYPE_3__ ffd; TYPE_1__ event; } ;
struct TYPE_8__ {TYPE_2__* f_op; } ;
struct TYPE_6__ {unsigned int (* poll ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct eventpoll *ep, struct epitem *epi, struct epoll_event *event)
{
	int pwake = 0;
	unsigned int revents;

	/*
	 * Set the new event interest mask before calling f_op->poll();
	 * otherwise we might miss an event that happens between the
	 * f_op->poll() call and the new event set registering.
	 */
	epi->event.events = event->events;
	epi->event.data = event->data; /* protected by mtx */

	/*
	 * Get current event bits. We can safely use the file* here because
	 * its usage count has been increased by the caller of this function.
	 */
	revents = epi->ffd.file->f_op->poll(epi->ffd.file, NULL);

	/*
	 * If the item is "hot" and it is not registered inside the ready
	 * list, push it inside.
	 */
	if (revents & event->events) {
		FUNC3(&ep->lock);
		if (!FUNC0(&epi->rdllink)) {
			FUNC2(&epi->rdllink, &ep->rdllist);

			/* Notify waiting tasks that events are available */
			if (FUNC6(&ep->wq))
				FUNC7(&ep->wq);
			if (FUNC6(&ep->poll_wait))
				pwake++;
		}
		FUNC4(&ep->lock);
	}

	/* We have to call this outside the lock */
	if (pwake)
		FUNC1(&ep->poll_wait);

	return 0;
}