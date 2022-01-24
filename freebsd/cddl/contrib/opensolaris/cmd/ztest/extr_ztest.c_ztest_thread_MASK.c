#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ zs_thread_stop; scalar_t__ zs_thread_kill; int zs_enospc_count; } ;
typedef  TYPE_1__ ztest_shared_t ;
struct TYPE_10__ {scalar_t__ zc_next; } ;
typedef  TYPE_2__ ztest_shared_callstate_t ;
struct TYPE_11__ {int* zi_interval; } ;
typedef  TYPE_3__ ztest_info_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ hrtime_t ;

/* Variables and functions */
 int ZTEST_FUNCS ; 
 TYPE_2__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_3__*,scalar_t__) ; 
 TYPE_3__* ztest_info ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_1__* ztest_shared ; 

__attribute__((used)) static void *
FUNC6(void *arg)
{
	int rand;
	uint64_t id = (uintptr_t)arg;
	ztest_shared_t *zs = ztest_shared;
	uint64_t call_next;
	hrtime_t now;
	ztest_info_t *zi;
	ztest_shared_callstate_t *zc;

	while ((now = FUNC2()) < zs->zs_thread_stop) {
		/*
		 * See if it's time to force a crash.
		 */
		if (now > zs->zs_thread_kill)
			FUNC4(zs);

		/*
		 * If we're getting ENOSPC with some regularity, stop.
		 */
		if (zs->zs_enospc_count > 10)
			break;

		/*
		 * Pick a random function to execute.
		 */
		rand = FUNC5(ZTEST_FUNCS);
		zi = &ztest_info[rand];
		zc = FUNC0(rand);
		call_next = zc->zc_next;

		if (now >= call_next &&
		    FUNC1(&zc->zc_next, call_next, call_next +
		    FUNC5(2 * zi->zi_interval[0] + 1)) == call_next) {
			FUNC3(rand, zi, id);
		}
	}

	return (NULL);
}