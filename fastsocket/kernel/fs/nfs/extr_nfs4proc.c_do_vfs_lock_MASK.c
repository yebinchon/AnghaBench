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
struct file_lock {int fl_flags; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  FL_FLOCK 129 
#define  FL_POSIX 128 
 int FUNC1 (struct file*,struct file_lock*) ; 
 int FUNC2 (struct file*,struct file_lock*) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct file_lock *fl)
{
	int res = 0;
	switch (fl->fl_flags & (FL_POSIX|FL_FLOCK)) {
		case FL_POSIX:
			res = FUNC2(file, fl);
			break;
		case FL_FLOCK:
			res = FUNC1(file, fl);
			break;
		default:
			FUNC0();
	}
	return res;
}