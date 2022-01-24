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
typedef  union perf_event {int dummy; } perf_event ;
struct perf_tool {int dummy; } ;
struct perf_session {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct perf_tool*,union perf_event*,struct perf_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_tool*,union perf_event*) ; 

__attribute__((used)) static int FUNC2(struct perf_tool *tool,
					   union perf_event *event,
					   struct perf_session *session)
{
	int err;

	FUNC1(tool, event);
	err = FUNC0(tool, event, session);

	return err;
}