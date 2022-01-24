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
struct TYPE_2__ {char* name; char* summary; } ;

/* Variables and functions */
 char** bench_usage ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__* subsystems ; 

__attribute__((used)) static void FUNC1(void)
{
	int i;

	FUNC0("Usage: \n");
	for (i = 0; bench_usage[i]; i++)
		FUNC0("\t%s\n", bench_usage[i]);
	FUNC0("\n");

	FUNC0("# List of available subsystems...\n\n");

	for (i = 0; subsystems[i].name; i++)
		FUNC0("%14s: %s\n",
		       subsystems[i].name, subsystems[i].summary);
	FUNC0("\n");
}