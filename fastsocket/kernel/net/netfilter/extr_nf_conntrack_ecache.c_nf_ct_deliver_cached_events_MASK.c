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
struct nf_ct_event_notifier {int (* fcn ) (unsigned long,struct nf_ct_event*) ;} ;
struct nf_ct_event {int /*<<< orphan*/  report; int /*<<< orphan*/  pid; struct nf_conn* ct; } ;
struct nf_conntrack_ecache {unsigned long missed; int /*<<< orphan*/  cache; } ;
struct nf_conn {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  nf_conntrack_event_cb ; 
 struct nf_conntrack_ecache* FUNC0 (struct nf_conn*) ; 
 scalar_t__ FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 struct nf_ct_event_notifier* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (unsigned long,struct nf_ct_event*) ; 
 scalar_t__ FUNC9 (int) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(struct nf_conn *ct)
{
	unsigned long events;
	struct nf_ct_event_notifier *notify;
	struct nf_conntrack_ecache *e;

	FUNC4();
	notify = FUNC3(nf_conntrack_event_cb);
	if (notify == NULL)
		goto out_unlock;

	e = FUNC0(ct);
	if (e == NULL)
		goto out_unlock;

	events = FUNC10(&e->cache, 0);

	if (FUNC1(ct) && !FUNC2(ct) && events) {
		struct nf_ct_event item = {
			.ct	= ct,
			.pid	= 0,
			.report	= 0
		};
		int ret;
		/* We make a copy of the missed event cache without taking
		 * the lock, thus we may send missed events twice. However,
		 * this does not harm and it happens very rarely. */
		unsigned long missed = e->missed;

		ret = notify->fcn(events | missed, &item);
		if (FUNC9(ret < 0 || missed)) {
			FUNC6(&ct->lock);
			if (ret < 0)
				e->missed |= events;
			else
				e->missed &= ~missed;
			FUNC7(&ct->lock);
		} 
	}

out_unlock:
	FUNC5();
}