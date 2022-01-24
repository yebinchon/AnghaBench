#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_bearer {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_21__ {scalar_t__ blocked; } ;
struct bearer {TYPE_1__* media; TYPE_9__ publ; int /*<<< orphan*/  nodes; } ;
struct TYPE_20__ {scalar_t__ count; } ;
struct TYPE_19__ {int /*<<< orphan*/  bearer_congs; } ;
struct TYPE_17__ {int blocked; } ;
struct TYPE_18__ {TYPE_3__ publ; } ;
struct TYPE_16__ {struct bearer* secondary; struct bearer* primary; } ;
struct TYPE_15__ {int /*<<< orphan*/  bcast_addr; scalar_t__ (* send_msg ) (struct sk_buff*,TYPE_9__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_14__ {TYPE_4__ bearer; TYPE_6__ remains_new; TYPE_6__ remains; TYPE_2__* bpairs; } ;
struct TYPE_13__ {TYPE_5__ stats; } ;

/* Variables and functions */
 int MAX_BEARERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_12__* bcbearer ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 TYPE_11__* bcl ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*,TYPE_9__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sk_buff*,TYPE_9__*,int /*<<< orphan*/ *) ; 
 TYPE_6__ tipc_cltr_bcast_nodes ; 
 int /*<<< orphan*/  tipc_net_id ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_6__*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *buf,
			      struct tipc_bearer *unused1,
			      struct tipc_media_addr *unused2)
{
	static int send_count = 0;

	int bp_index;
	int swap_time;

	/* Prepare buffer for broadcasting (if first time trying to send it) */

	if (FUNC3(!FUNC4(FUNC2(buf)))) {
		struct tipc_msg *msg;

		FUNC0(tipc_cltr_bcast_nodes.count != 0);
		FUNC1(buf, tipc_cltr_bcast_nodes.count);
		msg = FUNC2(buf);
		FUNC6(msg, 1);
		FUNC5(msg, tipc_net_id);
	}

	/* Determine if bearer pairs should be swapped following this attempt */

	if ((swap_time = (++send_count >= 10)))
		send_count = 0;

	/* Send buffer over bearers until all targets reached */

	bcbearer->remains = tipc_cltr_bcast_nodes;

	for (bp_index = 0; bp_index < MAX_BEARERS; bp_index++) {
		struct bearer *p = bcbearer->bpairs[bp_index].primary;
		struct bearer *s = bcbearer->bpairs[bp_index].secondary;

		if (!p)
			break;	/* no more bearers to try */

		FUNC9(&bcbearer->remains, &p->nodes, &bcbearer->remains_new);
		if (bcbearer->remains_new.count == bcbearer->remains.count)
			continue;	/* bearer pair doesn't add anything */

		if (!p->publ.blocked &&
		    !p->media->send_msg(buf, &p->publ, &p->media->bcast_addr)) {
			if (swap_time && s && !s->publ.blocked)
				goto swap;
			else
				goto update;
		}

		if (!s || s->publ.blocked ||
		    s->media->send_msg(buf, &s->publ, &s->media->bcast_addr))
			continue;	/* unable to send using bearer pair */
swap:
		bcbearer->bpairs[bp_index].primary = s;
		bcbearer->bpairs[bp_index].secondary = p;
update:
		if (bcbearer->remains_new.count == 0)
			return 0;

		bcbearer->remains = bcbearer->remains_new;
	}

	/* Unable to reach all targets */

	bcbearer->bearer.publ.blocked = 1;
	bcl->stats.bearer_congs++;
	return 1;
}