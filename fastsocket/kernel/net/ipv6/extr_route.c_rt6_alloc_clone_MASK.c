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
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct TYPE_4__ {int plen; int /*<<< orphan*/  addr; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_nexthop; TYPE_3__ u; int /*<<< orphan*/  rt6i_flags; TYPE_1__ rt6i_dst; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_HOST ; 
 int /*<<< orphan*/  RTF_CACHE ; 
 struct rt6_info* FUNC0 (struct rt6_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rt6_info *FUNC3(struct rt6_info *ort, struct in6_addr *daddr)
{
	struct rt6_info *rt = FUNC0(ort);
	if (rt) {
		FUNC1(&rt->rt6i_dst.addr, daddr);
		rt->rt6i_dst.plen = 128;
		rt->rt6i_flags |= RTF_CACHE;
		rt->u.dst.flags |= DST_HOST;
		rt->rt6i_nexthop = FUNC2(ort->rt6i_nexthop);
	}
	return rt;
}