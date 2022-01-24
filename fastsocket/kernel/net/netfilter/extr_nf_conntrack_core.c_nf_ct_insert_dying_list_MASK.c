#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ expires; } ;
struct nf_conn {TYPE_3__ timeout; TYPE_1__* tuplehash; } ;
struct TYPE_6__ {int sysctl_events_retry_timeout; int /*<<< orphan*/  dying; } ;
struct net {TYPE_2__ ct; } ;
struct TYPE_5__ {int /*<<< orphan*/  hnnode; } ;

/* Variables and functions */
 size_t IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  death_by_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 struct net* FUNC2 (struct nf_conn*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct nf_conn *ct)
{
	struct net *net = FUNC2(ct);

	/* add this conntrack to the dying list */
	FUNC5(&nf_conntrack_lock);
	FUNC1(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
			     &net->ct.dying);
	FUNC6(&nf_conntrack_lock);
	/* set a new timer to retry event delivery */
	FUNC4(&ct->timeout, death_by_event, (unsigned long)ct);
	ct->timeout.expires = jiffies +
		(FUNC3() % net->ct.sysctl_events_retry_timeout);
	FUNC0(&ct->timeout);
}