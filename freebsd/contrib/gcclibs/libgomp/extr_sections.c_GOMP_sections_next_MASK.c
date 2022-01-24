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
 scalar_t__ FUNC0 (long*,long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gomp_thread* FUNC3 () ; 

unsigned
FUNC4 (void)
{
  struct gomp_thread *thr = FUNC3 ();
  long s, e, ret;

  FUNC1 (&thr->ts.work_share->lock);
  if (FUNC0 (&s, &e))
    ret = s;
  else
    ret = 0;
  FUNC2 (&thr->ts.work_share->lock);

  return ret;
}