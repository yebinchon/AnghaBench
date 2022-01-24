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
struct list_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct list_head**,int*,char*,char*) ; 
 int FUNC1 (struct list_head**,int*,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  tracing_events_path ; 

int FUNC4(struct list_head **list, int *idx,
				char *sys, char *event)
{
	int ret;

	ret = FUNC2(tracing_events_path);
	if (ret)
		return ret;

	if (FUNC3(sys, "*?"))
		return FUNC1(list, idx, sys, event);
	else
		return FUNC0(list, idx, sys, event);
}