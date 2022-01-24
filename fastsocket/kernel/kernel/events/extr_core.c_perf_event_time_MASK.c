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
typedef  int /*<<< orphan*/  u64 ;
struct perf_event_context {int /*<<< orphan*/  time; } ;
struct perf_event {struct perf_event_context* ctx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 

__attribute__((used)) static u64 FUNC2(struct perf_event *event)
{
	struct perf_event_context *ctx = event->ctx;

	if (FUNC0(event))
		return FUNC1(event);

	return ctx ? ctx->time : 0;
}