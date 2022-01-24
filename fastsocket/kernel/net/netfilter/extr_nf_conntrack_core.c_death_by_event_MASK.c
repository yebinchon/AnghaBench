#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ expires; } ;
struct nf_conn {TYPE_2__* tuplehash; int /*<<< orphan*/  status; TYPE_3__ timeout; } ;
struct TYPE_4__ {int sysctl_events_retry_timeout; } ;
struct net {TYPE_1__ ct; } ;
struct TYPE_5__ {int /*<<< orphan*/  hnnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_DESTROY ; 
 int /*<<< orphan*/  IPS_DYING_BIT ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 struct net* FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(unsigned long ul_conntrack)
{
	struct nf_conn *ct = (void *)ul_conntrack;
	struct net *net = FUNC3(ct);

	if (FUNC2(IPCT_DESTROY, ct) < 0) {
		/* bad luck, let's retry again */
		ct->timeout.expires = jiffies +
			(FUNC5() % net->ct.sysctl_events_retry_timeout);
		FUNC0(&ct->timeout);
		return;
	}
	/* we've got the event delivered, now it's dying */
	FUNC6(IPS_DYING_BIT, &ct->status);
	FUNC7(&nf_conntrack_lock);
	FUNC1(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode);
	FUNC8(&nf_conntrack_lock);
	FUNC4(ct);
}