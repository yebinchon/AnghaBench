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
struct net_device {TYPE_1__* header_ops; } ;
struct neighbour {int nud_state; TYPE_2__* ops; struct hh_cache* hh; } ;
struct hh_cache {scalar_t__ hh_type; int /*<<< orphan*/  hh_refcnt; int /*<<< orphan*/  hh_output; struct hh_cache* hh_next; int /*<<< orphan*/  hh_lock; } ;
struct dst_entry {struct hh_cache* hh; struct net_device* dev; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  output; int /*<<< orphan*/  hh_output; } ;
struct TYPE_3__ {scalar_t__ (* cache ) (struct neighbour*,struct hh_cache*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NUD_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hh_cache*) ; 
 struct hh_cache* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct neighbour*,struct hh_cache*) ; 

__attribute__((used)) static void FUNC6(struct neighbour *n, struct dst_entry *dst,
			  __be16 protocol)
{
	struct hh_cache	*hh;
	struct net_device *dev = dst->dev;

	for (hh = n->hh; hh; hh = hh->hh_next)
		if (hh->hh_type == protocol)
			break;

	if (!hh && (hh = FUNC3(sizeof(*hh), GFP_ATOMIC)) != NULL) {
		FUNC4(&hh->hh_lock);
		hh->hh_type = protocol;
		FUNC1(&hh->hh_refcnt, 0);
		hh->hh_next = NULL;

		if (dev->header_ops->cache(n, hh)) {
			FUNC2(hh);
			hh = NULL;
		} else {
			FUNC0(&hh->hh_refcnt);
			hh->hh_next = n->hh;
			n->hh	    = hh;
			if (n->nud_state & NUD_CONNECTED)
				hh->hh_output = n->ops->hh_output;
			else
				hh->hh_output = n->ops->output;
		}
	}
	if (hh)	{
		FUNC0(&hh->hh_refcnt);
		dst->hh = hh;
	}
}