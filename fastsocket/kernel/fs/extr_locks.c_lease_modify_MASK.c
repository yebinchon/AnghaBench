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
struct file_lock {int dummy; } ;

/* Variables and functions */
 int F_UNLCK ; 
 int FUNC0 (struct file_lock*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock**) ; 
 int /*<<< orphan*/  FUNC2 (struct file_lock*) ; 

int FUNC3(struct file_lock **before, int arg)
{
	struct file_lock *fl = *before;
	int error = FUNC0(fl, arg);

	if (error)
		return error;
	FUNC2(fl);
	if (arg == F_UNLCK)
		FUNC1(before);
	return 0;
}