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
struct TYPE_4__ {TYPE_3__* opt; } ;
struct ipv6_pinfo {TYPE_1__ cork; } ;
struct TYPE_5__ {int /*<<< orphan*/  fl; int /*<<< orphan*/  flags; int /*<<< orphan*/ * dst; } ;
struct inet_sock {TYPE_2__ cork; } ;
struct TYPE_6__ {struct TYPE_6__* srcrt; struct TYPE_6__* hopopt; struct TYPE_6__* dst1opt; struct TYPE_6__* dst0opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCORK_ALLFRAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct inet_sock *inet, struct ipv6_pinfo *np)
{
	if (np->cork.opt) {
		FUNC1(np->cork.opt->dst0opt);
		FUNC1(np->cork.opt->dst1opt);
		FUNC1(np->cork.opt->hopopt);
		FUNC1(np->cork.opt->srcrt);
		FUNC1(np->cork.opt);
		np->cork.opt = NULL;
	}

	if (inet->cork.dst) {
		FUNC0(inet->cork.dst);
		inet->cork.dst = NULL;
		inet->cork.flags &= ~IPCORK_ALLFRAG;
	}
	FUNC2(&inet->cork.fl, 0, sizeof(inet->cork.fl));
}