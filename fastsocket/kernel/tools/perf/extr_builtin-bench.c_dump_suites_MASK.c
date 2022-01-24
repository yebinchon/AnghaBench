#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; TYPE_1__* suites; } ;
struct TYPE_3__ {char* name; char* summary; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__* subsystems ; 

__attribute__((used)) static void FUNC1(int subsys_index)
{
	int i;

	FUNC0("# List of available suites for %s...\n\n",
	       subsystems[subsys_index].name);

	for (i = 0; subsystems[subsys_index].suites[i].name; i++)
		FUNC0("%14s: %s\n",
		       subsystems[subsys_index].suites[i].name,
		       subsystems[subsys_index].suites[i].summary);

	FUNC0("\n");
	return;
}