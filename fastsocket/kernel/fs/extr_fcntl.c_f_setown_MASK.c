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
struct file {int dummy; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int PIDTYPE_PGID ; 
 int PIDTYPE_PID ; 
 int FUNC0 (struct file*,struct pid*,int,int) ; 
 struct pid* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct file *filp, unsigned long arg, int force)
{
	enum pid_type type;
	struct pid *pid;
	int who = arg;
	int result;
	type = PIDTYPE_PID;
	if (who < 0) {
		type = PIDTYPE_PGID;
		who = -who;
	}
	FUNC2();
	pid = FUNC1(who);
	result = FUNC0(filp, pid, type, force);
	FUNC3();
	return result;
}