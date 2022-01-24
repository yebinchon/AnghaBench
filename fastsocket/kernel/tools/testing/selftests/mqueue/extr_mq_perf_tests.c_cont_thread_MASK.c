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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int MSG_SIZE ; 
 scalar_t__* cpu_threads ; 
 int* cpus_to_pin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int num_cpus_to_pin ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  queue ; 

void *FUNC4(void *arg)
{
	char buff[MSG_SIZE];
	int i, priority;

	for (i = 0; i < num_cpus_to_pin; i++)
		if (cpu_threads[i] == FUNC3())
			break;
	FUNC2("\tStarted continuous mode thread %d on CPU %d\n", i,
	       cpus_to_pin[i]);
	while (1) {
		while(FUNC1(queue, buff, sizeof(buff), 0) == 0)
			;
		FUNC0(queue, buff, sizeof(buff), &priority);
	}
}