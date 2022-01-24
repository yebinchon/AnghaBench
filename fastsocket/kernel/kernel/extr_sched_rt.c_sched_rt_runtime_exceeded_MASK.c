#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
struct rt_rq {int rt_throttled; scalar_t__ rt_time; } ;

/* Variables and functions */
 scalar_t__ RUNTIME_INF ; 
 int /*<<< orphan*/  FUNC0 (struct rt_rq*) ; 
 int FUNC1 (struct rt_rq*) ; 
 scalar_t__ FUNC2 (struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_rq*) ; 
 scalar_t__ FUNC4 (struct rt_rq*) ; 

__attribute__((used)) static int FUNC5(struct rt_rq *rt_rq)
{
	u64 runtime = FUNC4(rt_rq);

	if (rt_rq->rt_throttled)
		return FUNC1(rt_rq);

	if (FUNC4(rt_rq) >= FUNC2(rt_rq))
		return 0;

	FUNC0(rt_rq);
	runtime = FUNC4(rt_rq);
	if (runtime == RUNTIME_INF)
		return 0;

	if (rt_rq->rt_time > runtime) {
		rt_rq->rt_throttled = 1;
		if (FUNC1(rt_rq)) {
			FUNC3(rt_rq);
			return 1;
		}
	}

	return 0;
}