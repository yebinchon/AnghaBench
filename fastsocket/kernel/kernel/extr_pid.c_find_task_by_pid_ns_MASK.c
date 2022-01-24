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
struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pid_namespace*) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct task_struct *FUNC2(pid_t nr, struct pid_namespace *ns)
{
	return FUNC1(FUNC0(nr, ns), PIDTYPE_PID);
}