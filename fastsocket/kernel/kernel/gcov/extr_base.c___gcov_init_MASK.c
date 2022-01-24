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
struct gcov_info {unsigned int version; struct gcov_info* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCOV_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gcov_info*) ; 
 scalar_t__ gcov_events_enabled ; 
 struct gcov_info* gcov_info_head ; 
 int /*<<< orphan*/  gcov_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

void FUNC4(struct gcov_info *info)
{
	static unsigned int gcov_version;

	FUNC1(&gcov_lock);
	if (gcov_version == 0) {
		gcov_version = info->version;
		/*
		 * Printing gcc's version magic may prove useful for debugging
		 * incompatibility reports.
		 */
		FUNC3("version magic: 0x%x\n", gcov_version);
	}
	/*
	 * Add new profiling data structure to list and inform event
	 * listener.
	 */
	info->next = gcov_info_head;
	gcov_info_head = info;
	if (gcov_events_enabled)
		FUNC0(GCOV_ADD, info);
	FUNC2(&gcov_lock);
}