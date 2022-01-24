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
 int /*<<< orphan*/  FUNC0 (struct file*,struct pid*,int,int) ; 
 int FUNC1 (struct file*) ; 

int FUNC2(struct file *filp, struct pid *pid, enum pid_type type,
		int force)
{
	int err;

	err = FUNC1(filp);
	if (err)
		return err;

	FUNC0(filp, pid, type, force);
	return 0;
}