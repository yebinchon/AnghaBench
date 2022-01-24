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
struct file {int f_mode; int /*<<< orphan*/  f_lock; int /*<<< orphan*/ * f_epi; } ;
struct eventpoll {TYPE_2__* user; int /*<<< orphan*/  lock; int /*<<< orphan*/  rbr; } ;
struct TYPE_3__ {struct file* file; } ;
struct epitem {int /*<<< orphan*/  rcu; int /*<<< orphan*/  rdllink; int /*<<< orphan*/  rbn; int /*<<< orphan*/  fllink; TYPE_1__ ffd; } ;
struct TYPE_4__ {int /*<<< orphan*/  epoll_watches; } ;

/* Variables and functions */
 int FMODE_BIND_EPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct eventpoll*,struct epitem*) ; 
 int /*<<< orphan*/  epi_rcu_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC11(struct eventpoll *ep, struct epitem *epi)
{
	unsigned long flags;
	struct file *file = epi->ffd.file;

	if (file->f_mode & FMODE_BIND_EPI) {
		file->f_epi = NULL;
	}

	/*
	 * Removes poll wait queue hooks. We _have_ to do this without holding
	 * the "ep->lock" otherwise a deadlock might occur. This because of the
	 * sequence of the lock acquisition. Here we do "ep->lock" then the wait
	 * queue head lock when unregistering the wait queue. The wakeup callback
	 * will run by holding the wait queue head lock and will call our callback
	 * that will try to get "ep->lock".
	 */
	FUNC3(ep, epi);

	/* Remove the current item from the list of epoll hooks */
	FUNC7(&file->f_lock);
	FUNC5(&epi->fllink);
	FUNC9(&file->f_lock);

	FUNC6(&epi->rbn, &ep->rbr);

	FUNC8(&ep->lock, flags);
	if (FUNC2(&epi->rdllink))
		FUNC4(&epi->rdllink);
	FUNC10(&ep->lock, flags);

	/*
	 * At this point it is safe to free the eventpoll item. Use the union
	 * field epi->rcu, since we are trying to minimize the size of
	 * 'struct epitem'. The 'rbn' field is no longer in use. Protected by
	 * ep->mtx. The rcu read side, reverse_path_check_proc(), does not make
	 * use of the rbn field.
	 */
	FUNC1(&epi->rcu, epi_rcu_free);

	FUNC0(&ep->user->epoll_watches);

	return 0;
}