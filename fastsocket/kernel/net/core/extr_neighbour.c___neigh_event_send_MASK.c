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
struct sk_buff {int dummy; } ;
struct neighbour {int nud_state; unsigned long updated; int /*<<< orphan*/  lock; int /*<<< orphan*/  arp_queue; int /*<<< orphan*/  tbl; TYPE_1__* parms; int /*<<< orphan*/  probes; } ;
struct TYPE_2__ {unsigned long delay_probe_time; scalar_t__ queue_len; int /*<<< orphan*/  ucast_probes; scalar_t__ app_probes; scalar_t__ mcast_probes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct neighbour*) ; 
 int NUD_CONNECTED ; 
 int NUD_DELAY ; 
 int NUD_FAILED ; 
 int NUD_INCOMPLETE ; 
 int NUD_PROBE ; 
 int NUD_STALE ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct neighbour*,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unres_discards ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct neighbour *neigh, struct sk_buff *skb)
{
	int rc;
	unsigned long now;

	FUNC8(&neigh->lock);

	rc = 0;
	if (neigh->nud_state & (NUD_CONNECTED | NUD_DELAY | NUD_PROBE))
		goto out_unlock_bh;

	now = jiffies;

	if (!(neigh->nud_state & (NUD_STALE | NUD_INCOMPLETE))) {
		if (neigh->parms->mcast_probes + neigh->parms->app_probes) {
			FUNC4(&neigh->probes, neigh->parms->ucast_probes);
			neigh->nud_state     = NUD_INCOMPLETE;
			neigh->updated = jiffies;
			FUNC6(neigh, now + 1);
		} else {
			neigh->nud_state = NUD_FAILED;
			neigh->updated = jiffies;
			FUNC9(&neigh->lock);

			FUNC5(skb);
			return 1;
		}
	} else if (neigh->nud_state & NUD_STALE) {
		FUNC1("neigh %p is delayed.\n", neigh);
		neigh->nud_state = NUD_DELAY;
		neigh->updated = jiffies;
		FUNC6(neigh,
				jiffies + neigh->parms->delay_probe_time);
	}

	if (neigh->nud_state == NUD_INCOMPLETE) {
		if (skb) {
			if (FUNC7(&neigh->arp_queue) >=
			    neigh->parms->queue_len) {
				struct sk_buff *buff;
				buff = FUNC2(&neigh->arp_queue);
				FUNC5(buff);
				FUNC0(neigh->tbl, unres_discards);
			}
			FUNC3(&neigh->arp_queue, skb);
		}
		rc = 1;
	}
out_unlock_bh:
	FUNC9(&neigh->lock);
	return rc;
}