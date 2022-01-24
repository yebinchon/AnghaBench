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
struct TYPE_3__ {unsigned int total; scalar_t__ arrived; int /*<<< orphan*/  sem2; int /*<<< orphan*/  sem1; int /*<<< orphan*/  mutex2; int /*<<< orphan*/  mutex1; } ;
typedef  TYPE_1__ gomp_barrier_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2 (gomp_barrier_t *bar, unsigned count)
{
  FUNC0 (&bar->mutex1);
#ifndef HAVE_SYNC_BUILTINS
  FUNC0 (&bar->mutex2);
#endif
  FUNC1 (&bar->sem1, 0);
  FUNC1 (&bar->sem2, 0);
  bar->total = count;
  bar->arrived = 0;
}