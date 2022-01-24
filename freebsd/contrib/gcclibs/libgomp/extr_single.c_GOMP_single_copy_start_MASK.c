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
struct TYPE_5__ {TYPE_3__* work_share; TYPE_1__* team; } ;
struct gomp_thread {TYPE_2__ ts; } ;
struct TYPE_6__ {void* copyprivate; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  barrier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gomp_thread* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 

void *
FUNC5 (void)
{
  struct gomp_thread *thr = FUNC2 ();

  bool first;
  void *ret;

  first = FUNC4 (false);
  FUNC1 (&thr->ts.work_share->lock);
  
  if (first)
    ret = NULL;
  else
    {
      FUNC0 (&thr->ts.team->barrier);

      ret = thr->ts.work_share->copyprivate;
      FUNC3 ();
    }

  return ret;
}