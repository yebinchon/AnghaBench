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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_2__ dst; } ;
struct TYPE_6__ {scalar_t__ iif; } ;
struct rtable {int /*<<< orphan*/  rt_gateway; TYPE_1__ u; TYPE_3__ fl; int /*<<< orphan*/  rt_src; } ;
struct fib_result {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fib_result) ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,struct fib_result*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib_result*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC6(u8 *addr, struct rtable *rt)
{
	__be32 src;
	struct fib_result res;

	if (rt->fl.iif == 0)
		src = rt->rt_src;
	else if (FUNC2(FUNC1(rt->u.dst.dev), &rt->fl, &res) == 0) {
		src = FUNC0(res);
		FUNC3(&res);
	} else
		src = FUNC4(rt->u.dst.dev, rt->rt_gateway,
					RT_SCOPE_UNIVERSE);
	FUNC5(addr, &src, 4);
}