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
struct TYPE_3__ {TYPE_2__* work_share; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS_STATIC ; 
 int /*<<< orphan*/  FUNC0 (long*,long*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,long,long,long,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gomp_thread* FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool
FUNC5 (long start, long end, long incr, long chunk_size,
			long *istart, long *iend)
{
  struct gomp_thread *thr = FUNC3 ();

  if (FUNC4 (false))
    FUNC1 (thr->ts.work_share, start, end, incr,
		    GFS_STATIC, chunk_size);
  FUNC2 (&thr->ts.work_share->lock);

  return !FUNC0 (istart, iend);
}