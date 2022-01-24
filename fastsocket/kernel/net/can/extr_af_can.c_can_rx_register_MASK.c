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
struct receiver {void (* func ) (struct sk_buff*,void*) ;char* ident; int /*<<< orphan*/  list; void* data; scalar_t__ matches; void* mask; void* can_id; } ;
struct net_device {int dummy; } ;
struct hlist_head {int dummy; } ;
struct dev_rcv_lists {int /*<<< orphan*/  entries; } ;
typedef  void* canid_t ;
struct TYPE_2__ {scalar_t__ rcv_entries; scalar_t__ rcv_entries_max; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ can_pstats ; 
 int /*<<< orphan*/  can_rcvlists_lock ; 
 struct dev_rcv_lists* FUNC0 (struct net_device*) ; 
 struct hlist_head* FUNC1 (void**,void**,struct dev_rcv_lists*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 struct receiver* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct receiver*) ; 
 int /*<<< orphan*/  rcv_cache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct net_device *dev, canid_t can_id, canid_t mask,
		    void (*func)(struct sk_buff *, void *), void *data,
		    char *ident)
{
	struct receiver *r;
	struct hlist_head *rl;
	struct dev_rcv_lists *d;
	int err = 0;

	/* insert new receiver  (dev,canid,mask) -> (func,data) */

	r = FUNC3(rcv_cache, GFP_KERNEL);
	if (!r)
		return -ENOMEM;

	FUNC5(&can_rcvlists_lock);

	d = FUNC0(dev);
	if (d) {
		rl = FUNC1(&can_id, &mask, d);

		r->can_id  = can_id;
		r->mask    = mask;
		r->matches = 0;
		r->func    = func;
		r->data    = data;
		r->ident   = ident;

		FUNC2(&r->list, rl);
		d->entries++;

		can_pstats.rcv_entries++;
		if (can_pstats.rcv_entries_max < can_pstats.rcv_entries)
			can_pstats.rcv_entries_max = can_pstats.rcv_entries;
	} else {
		FUNC4(rcv_cache, r);
		err = -ENODEV;
	}

	FUNC6(&can_rcvlists_lock);

	return err;
}