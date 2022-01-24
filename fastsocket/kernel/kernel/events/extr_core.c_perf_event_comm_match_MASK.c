#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ comm; } ;
struct perf_event {scalar_t__ state; TYPE_1__ attr; } ;

/* Variables and functions */
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 

__attribute__((used)) static int FUNC1(struct perf_event *event)
{
	if (event->state < PERF_EVENT_STATE_INACTIVE)
		return 0;

	if (!FUNC0(event))
		return 0;

	if (event->attr.comm)
		return 1;

	return 0;
}