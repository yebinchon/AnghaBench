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
struct perf_event_context {int dummy; } ;
struct perf_event {int /*<<< orphan*/  child_mutex; int /*<<< orphan*/  child_list; struct perf_event* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event,
			    struct perf_event_context *ctx)
{
	struct perf_event *parent = event->parent;

	if (FUNC0(!parent))
		return;

	FUNC4(&parent->child_mutex);
	FUNC3(&event->child_list);
	FUNC5(&parent->child_mutex);

	FUNC7(parent);

	FUNC6(event);
	FUNC2(event, ctx);
	FUNC1(event);
}