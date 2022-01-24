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
struct tracepoint_iter {int /*<<< orphan*/  tracepoint; int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  __start___tracepoints ; 
 int /*<<< orphan*/  __stop___tracepoints ; 
 int FUNC0 (struct tracepoint_iter*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tracepoint_iter*) ; 

__attribute__((used)) static void FUNC3(struct tracepoint_iter *iter)
{
	int found = 0;

	/* Core kernel tracepoints */
	if (!iter->module) {
		found = FUNC1(&iter->tracepoint,
				__start___tracepoints, __stop___tracepoints);
		if (found)
			goto end;
	}
	/* tracepoints in modules. */
	found = FUNC0(iter);
end:
	if (!found)
		FUNC2(iter);
}