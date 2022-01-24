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
struct file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct file_lock* FUNC0 (int) ; 
 int FUNC1 (struct file*,int,struct file_lock*) ; 
 struct file_lock* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct file_lock*) ; 

__attribute__((used)) static struct file_lock *FUNC4(struct file *filp, int type)
{
	struct file_lock *fl = FUNC2();
	int error = -ENOMEM;

	if (fl == NULL)
		return FUNC0(error);

	error = FUNC1(filp, type, fl);
	if (error) {
		FUNC3(fl);
		return FUNC0(error);
	}
	return fl;
}