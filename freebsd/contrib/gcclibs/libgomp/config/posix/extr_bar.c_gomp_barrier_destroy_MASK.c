#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sem2; int /*<<< orphan*/  sem1; int /*<<< orphan*/  mutex2; int /*<<< orphan*/  mutex1; } ;
typedef  TYPE_1__ gomp_barrier_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4 (gomp_barrier_t *bar)
{
  /* Before destroying, make sure all threads have left the barrier.  */
  FUNC1 (&bar->mutex1);
  FUNC2 (&bar->mutex1);

  FUNC0 (&bar->mutex1);
#ifndef HAVE_SYNC_BUILTINS
  FUNC0 (&bar->mutex2);
#endif
  FUNC3 (&bar->sem1);
  FUNC3 (&bar->sem2);
}