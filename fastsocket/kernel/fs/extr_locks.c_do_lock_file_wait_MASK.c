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
struct file_lock {int /*<<< orphan*/  fl_next; int /*<<< orphan*/  fl_wait; int /*<<< orphan*/  fl_type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FILE_LOCK_DEFERRED ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,unsigned int,struct file_lock*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct file *filp, unsigned int cmd,
			     struct file_lock *fl)
{
	int error;

	error = FUNC1(filp, fl->fl_type);
	if (error)
		return error;

	for (;;) {
		error = FUNC2(filp, cmd, fl, NULL);
		if (error != FILE_LOCK_DEFERRED)
			break;
		error = FUNC3(fl->fl_wait, !fl->fl_next);
		if (!error)
			continue;

		FUNC0(fl);
		break;
	}

	return error;
}