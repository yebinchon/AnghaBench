#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct file {int f_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct eppoll_entry {int /*<<< orphan*/  llink; TYPE_1__ wait; struct epitem* base; int /*<<< orphan*/ * whead; } ;
struct epitem {int nwait; int /*<<< orphan*/  pwqlist; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int FMODE_SINGLE_WAKEUP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WQ_FLAG_LOADBALANCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct epitem* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ep_poll_callback ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct eppoll_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pwq_cache ; 

__attribute__((used)) static void FUNC5(struct file *file, wait_queue_head_t *whead,
				 poll_table *pt)
{
	struct epitem *epi = FUNC1(pt);
	struct eppoll_entry *pwq;

	if (epi->nwait >= 0 && (pwq = FUNC3(pwq_cache, GFP_KERNEL))) {
		FUNC2(&pwq->wait, ep_poll_callback);
		pwq->whead = whead;
		pwq->base = epi;
		if (file->f_mode & FMODE_SINGLE_WAKEUP) {
			pwq->wait.flags |= WQ_FLAG_LOADBALANCE;
		}
		FUNC0(whead, &pwq->wait);
		FUNC4(&pwq->llink, &epi->pwqlist);
		epi->nwait++;
	} else {
		/* We have to signal that an error occurred */
		epi->nwait = -1;
	}
}