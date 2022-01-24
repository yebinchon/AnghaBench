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
typedef  int /*<<< orphan*/  wait_queue_t ;
struct eventpoll {scalar_t__ ovflist; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; int /*<<< orphan*/  rdllist; } ;
struct TYPE_2__ {int events; } ;
struct epitem {scalar_t__ next; int /*<<< orphan*/  rdllink; TYPE_1__ event; struct eventpoll* ep; } ;

/* Variables and functions */
 int EP_PRIVATE_BITS ; 
 scalar_t__ EP_UNACTIVE_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct epitem* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(wait_queue_t *wait, unsigned mode, int sync, void *key)
{
	int pwake = 0;
	unsigned long flags;
	struct epitem *epi = FUNC1(wait);
	struct eventpoll *ep = epi->ep;

	FUNC4(&ep->lock, flags);

	/*
	 * If the event mask does not contain any poll(2) event, we consider the
	 * descriptor to be disabled. This condition is likely the effect of the
	 * EPOLLONESHOT bit that disables the descriptor when an event is received,
	 * until the next EPOLL_CTL_MOD will be issued.
	 */
	if (!(epi->event.events & ~EP_PRIVATE_BITS))
		goto out_unlock;

	/*
	 * Check the events coming with the callback. At this stage, not
	 * every device reports the events in the "key" parameter of the
	 * callback. We need to be able to handle both cases here, hence the
	 * test for "key" != NULL before the event match test.
	 */
	if (key && !((unsigned long) key & epi->event.events))
		goto out_unlock;

	/*
	 * If we are trasfering events to userspace, we can hold no locks
	 * (because we're accessing user memory, and because of linux f_op->poll()
	 * semantics). All the events that happens during that period of time are
	 * chained in ep->ovflist and requeued later on.
	 */
	if (FUNC6(ep->ovflist != EP_UNACTIVE_PTR)) {
		if (epi->next == EP_UNACTIVE_PTR) {
			epi->next = ep->ovflist;
			ep->ovflist = epi;
		}
		goto out_unlock;
	}

	/* If this file is already in the ready list we exit soon */
	if (!FUNC0(&epi->rdllink))
		FUNC3(&epi->rdllink, &ep->rdllist);

	/*
	 * Wake up ( if active ) both the eventpoll wait list and the ->poll()
	 * wait list.
	 */
	if (FUNC7(&ep->wq))
		FUNC8(&ep->wq);
	if (FUNC7(&ep->poll_wait))
		pwake++;

out_unlock:
	FUNC5(&ep->lock, flags);

	/* We have to call this outside the lock */
	if (pwake)
		FUNC2(&ep->poll_wait);

	return 1;
}