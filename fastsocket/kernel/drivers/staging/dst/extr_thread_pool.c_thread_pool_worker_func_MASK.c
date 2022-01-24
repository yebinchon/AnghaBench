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
struct thread_pool_worker {int /*<<< orphan*/  schedule_data; int /*<<< orphan*/  private; int /*<<< orphan*/  (* action ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ has_data; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread_pool_worker*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void *data)
{
	struct thread_pool_worker *w = data;

	while (!FUNC0()) {
		FUNC3(w->wait,
			FUNC0() || w->has_data);

		if (FUNC0())
			break;

		if (!w->has_data)
			continue;

		w->action(w->private, w->schedule_data);
		FUNC2(w);
	}

	return 0;
}