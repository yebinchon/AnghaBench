#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int f_mode; int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_ep_links; TYPE_1__* f_op; struct epitem* f_epi; } ;
struct eventpoll {int /*<<< orphan*/  lock; int /*<<< orphan*/  rbr; int /*<<< orphan*/  poll_wait; TYPE_2__* user; int /*<<< orphan*/  wq; int /*<<< orphan*/  rdllist; } ;
struct epoll_event {int events; } ;
struct epitem {scalar_t__ nwait; int /*<<< orphan*/  rdllink; int /*<<< orphan*/  rbn; int /*<<< orphan*/  fllink; int /*<<< orphan*/  next; struct epoll_event event; int /*<<< orphan*/  ffd; struct eventpoll* ep; int /*<<< orphan*/  pwqlist; } ;
struct ep_pqueue {int /*<<< orphan*/  pt; struct epitem* epi; } ;
struct TYPE_4__ {int /*<<< orphan*/  epoll_watches; } ;
struct TYPE_3__ {int (* poll ) (struct file*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EP_UNACTIVE_PTR ; 
 int FMODE_BIND_EPI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ep_ptable_queue_proc ; 
 int /*<<< orphan*/  FUNC5 (struct eventpoll*,struct epitem*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct file*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct eventpoll*,struct epitem*) ; 
 int /*<<< orphan*/  epi_cache ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct epitem* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct epitem*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ max_user_watches ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC21 (struct file*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

int FUNC25(struct eventpoll *ep, struct epoll_event *event,
	      struct file *tfile, int fd, int full_check)
{
	int error, revents, pwake = 0;
	unsigned long flags;
	struct epitem *epi;
	struct ep_pqueue epq;

	if (FUNC22(FUNC2(&ep->user->epoll_watches) >=
		     max_user_watches))
		return -ENOSPC;
	if (!(epi = FUNC9(epi_cache, GFP_KERNEL)))
		return -ENOMEM;

	/* Item initialization follow here ... */
	FUNC0(&epi->rdllink);
	FUNC0(&epi->fllink);
	FUNC0(&epi->pwqlist);
	epi->ep = ep;
	FUNC6(&epi->ffd, tfile, fd);
	epi->event = *event;
	epi->nwait = 0;
	epi->next = EP_UNACTIVE_PTR;

	if (tfile->f_mode & FMODE_BIND_EPI) {
		tfile->f_epi = epi;
	}

	/* Initialize the poll table using the queue callback */
	epq.epi = epi;
	FUNC8(&epq.pt, ep_ptable_queue_proc);

	/*
	 * Attach the item to the poll hooks and get current event bits.
	 * We can safely use the file* here because its usage count has
	 * been increased by the caller of this function. Note that after
	 * this operation completes, the poll callback can start hitting
	 * the new item.
	 */
	revents = tfile->f_op->poll(tfile, &epq.pt);

	/*
	 * We have to check if something went wrong during the poll wait queue
	 * install process. Namely an allocation for a wait queue failed due
	 * high memory pressure.
	 */
	error = -ENOMEM;
	if (epi->nwait < 0)
		goto error_unregister;

	/* Add the current item to the list of active epoll hook for this file */
	FUNC17(&tfile->f_lock);
	FUNC12(&epi->fllink, &tfile->f_ep_links);
	FUNC19(&tfile->f_lock);

	/*
	 * Add the current item to the RB tree. All RB tree operations are
	 * protected by "mtx", and ep_insert() is called with "mtx" held.
	 */
	FUNC5(ep, epi);

	/* now check if we've created too many backpaths */
	error = -EINVAL;
	if (full_check && FUNC16())
		goto error_remove_epi;

	/* We have to drop the new item inside our item list to keep track of it */
	FUNC18(&ep->lock, flags);

	/* If the file is already "ready" we drop it inside the ready list */
	if ((revents & event->events) && !FUNC3(&epi->rdllink)) {
		FUNC11(&epi->rdllink, &ep->rdllist);

		/* Notify waiting tasks that events are available */
		if (FUNC23(&ep->wq))
			FUNC24(&ep->wq);
		if (FUNC23(&ep->poll_wait))
			pwake++;
	}

	FUNC20(&ep->lock, flags);

	FUNC1(&ep->user->epoll_watches);

	/* We have to call this outside the lock */
	if (pwake)
		FUNC4(&ep->poll_wait);

	return 0;

error_remove_epi:
	FUNC17(&tfile->f_lock);
	FUNC14(&epi->fllink);
	FUNC19(&tfile->f_lock);

	FUNC15(&epi->rbn, &ep->rbr);

error_unregister:
	FUNC7(ep, epi);

	/*
	 * We need to do this because an event could have been arrived on some
	 * allocated wait queue. Note that we don't care about the ep->ovflist
	 * list, since that is used/cleaned only inside a section bound by "mtx".
	 * And ep_insert() is called with "mtx" held.
	 */
	FUNC18(&ep->lock, flags);
	if (FUNC3(&epi->rdllink))
		FUNC13(&epi->rdllink);
	FUNC20(&ep->lock, flags);

	FUNC10(epi_cache, epi);

	return error;
}