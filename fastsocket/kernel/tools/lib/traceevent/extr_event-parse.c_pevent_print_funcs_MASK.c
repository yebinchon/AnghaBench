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
struct pevent {TYPE_1__* func_map; scalar_t__ func_count; } ;
struct TYPE_2__ {char* mod; int /*<<< orphan*/  func; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(struct pevent *pevent)
{
	int i;

	if (!pevent->func_map)
		FUNC0(pevent);

	for (i = 0; i < (int)pevent->func_count; i++) {
		FUNC1("%016llx %s",
		       pevent->func_map[i].addr,
		       pevent->func_map[i].func);
		if (pevent->func_map[i].mod)
			FUNC1(" [%s]\n", pevent->func_map[i].mod);
		else
			FUNC1("\n");
	}
}