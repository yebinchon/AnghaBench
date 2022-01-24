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
struct pid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pid*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct pid* ftrace_swapper_pid ; 

__attribute__((used)) static void FUNC2(struct pid *pid)
{
	if (pid == ftrace_swapper_pid)
		FUNC1();
	else
		FUNC0(pid);
}