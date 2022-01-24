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
struct TYPE_4__ {TYPE_1__* work_share; } ;
struct gomp_thread {TYPE_2__ ts; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (long*,long*) ; 
 int FUNC1 (long*,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct gomp_thread* FUNC4 () ; 

__attribute__((used)) static bool
FUNC5 (long *istart, long *iend)
{
  bool ret;

#ifdef HAVE_SYNC_BUILTINS
  ret = gomp_iter_dynamic_next (istart, iend);
#else
  struct gomp_thread *thr = FUNC4 ();
  FUNC2 (&thr->ts.work_share->lock);
  ret = FUNC1 (istart, iend);
  FUNC3 (&thr->ts.work_share->lock);
#endif

  return ret;
}