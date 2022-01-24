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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct work_struct*) ; 
 int /*<<< orphan*/  key_gc_work ; 
 int key_need_gc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long*,int) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	static unsigned long running;

	if (!key_need_gc)
		return;

	if (FUNC3(&running, 1) == 0) {
		key_need_gc = false;
		FUNC2();
		FUNC0(work);

		running = 0;
		if (key_need_gc)
			FUNC1(&key_gc_work);
	}
}