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
struct cpu_stopper {int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; int /*<<< orphan*/  works; scalar_t__ enabled; } ;
struct cpu_stop_work {int /*<<< orphan*/  done; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cpu_stopper *stopper,
				struct cpu_stop_work *work)
{
	unsigned long flags;

	FUNC2(&stopper->lock, flags);

	if (stopper->enabled) {
		FUNC1(&work->list, &stopper->works);
		FUNC4(stopper->thread);
	} else
		FUNC0(work->done, false);

	FUNC3(&stopper->lock, flags);
}