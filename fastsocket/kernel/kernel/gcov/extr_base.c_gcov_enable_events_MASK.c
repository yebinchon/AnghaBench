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
struct gcov_info {struct gcov_info* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCOV_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gcov_info*) ; 
 int gcov_events_enabled ; 
 struct gcov_info* gcov_info_head ; 
 int /*<<< orphan*/  gcov_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	struct gcov_info *info;

	FUNC1(&gcov_lock);
	gcov_events_enabled = 1;
	/* Perform event callback for previously registered entries. */
	for (info = gcov_info_head; info; info = info->next)
		FUNC0(GCOV_ADD, info);
	FUNC2(&gcov_lock);
}