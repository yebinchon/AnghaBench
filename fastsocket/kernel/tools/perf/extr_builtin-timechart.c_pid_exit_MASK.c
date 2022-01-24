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
typedef  void* u64 ;
struct per_pid {TYPE_1__* current; void* end_time; } ;
struct TYPE_2__ {void* end_time; } ;

/* Variables and functions */
 struct per_pid* FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(int pid, u64 timestamp)
{
	struct per_pid *p;
	p = FUNC0(pid);
	p->end_time = timestamp;
	if (p->current)
		p->current->end_time = timestamp;
}