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
struct per_pid {int pid; struct per_pid* next; } ;

/* Variables and functions */
 struct per_pid* all_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct per_pid* FUNC1 (int) ; 

__attribute__((used)) static struct per_pid *FUNC2(int pid)
{
	struct per_pid *cursor = all_data;

	while (cursor) {
		if (cursor->pid == pid)
			return cursor;
		cursor = cursor->next;
	}
	cursor = FUNC1(sizeof(*cursor));
	FUNC0(cursor != NULL);
	cursor->pid = pid;
	cursor->next = all_data;
	all_data = cursor;
	return cursor;
}