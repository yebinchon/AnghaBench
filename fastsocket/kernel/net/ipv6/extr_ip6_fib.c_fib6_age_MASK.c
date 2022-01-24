#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lastuse; int /*<<< orphan*/  __refcnt; } ;
struct TYPE_6__ {TYPE_1__ dst; } ;
struct rt6_info {int rt6i_flags; TYPE_3__* rt6i_nexthop; TYPE_2__ u; int /*<<< orphan*/  rt6i_expires; } ;
struct TYPE_8__ {int /*<<< orphan*/  more; scalar_t__ timeout; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int NTF_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rt6_info*) ; 
 int RTF_CACHE ; 
 int RTF_EXPIRES ; 
 int RTF_GATEWAY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__ gc_args ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct rt6_info *rt, void *arg)
{
	unsigned long now = jiffies;

	/*
	 *	check addrconf expiration here.
	 *	Routes are expired even if they are in use.
	 *
	 *	Also age clones. Note, that clones are aged out
	 *	only if they are not in use now.
	 */

	if (rt->rt6i_flags&RTF_EXPIRES && rt->rt6i_expires) {
		if (FUNC2(now, rt->rt6i_expires)) {
			FUNC0("expiring %p\n", rt);
			return -1;
		}
		gc_args.more++;
	} else if (rt->rt6i_flags & RTF_CACHE) {
		if (FUNC1(&rt->u.dst.__refcnt) == 0 &&
		    FUNC3(now, rt->u.dst.lastuse + gc_args.timeout)) {
			FUNC0("aging clone %p\n", rt);
			return -1;
		} else if ((rt->rt6i_flags & RTF_GATEWAY) &&
			   (!(rt->rt6i_nexthop->flags & NTF_ROUTER))) {
			FUNC0("purging route %p via non-router but gateway\n",
				  rt);
			return -1;
		}
		gc_args.more++;
	}

	return 0;
}