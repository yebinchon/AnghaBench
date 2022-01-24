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
struct stack_trace {int nr_entries; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char) ; 

void FUNC3(struct stack_trace *trace, int spaces)
{
	int i;

	if (FUNC0(!trace->entries))
		return;

	for (i = 0; i < trace->nr_entries; i++) {
		FUNC2("%*c", 1 + spaces, ' ');
		FUNC1(trace->entries[i]);
	}
}