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
struct pid_namespace {int /*<<< orphan*/  last_pid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int,int,int) ; 

__attribute__((used)) static void FUNC2(struct pid_namespace *pid_ns, int base, int pid)
{
	int prev;
	int last_write = base;
	do {
		prev = last_write;
		last_write = FUNC0(&pid_ns->last_pid, prev, pid);
	} while ((prev != last_write) && (FUNC1(base, last_write, pid)));
}