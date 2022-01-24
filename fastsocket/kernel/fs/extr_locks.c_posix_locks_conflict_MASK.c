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
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int FUNC1 (struct file_lock*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_lock*,struct file_lock*) ; 
 scalar_t__ FUNC3 (struct file_lock*,struct file_lock*) ; 

__attribute__((used)) static int FUNC4(struct file_lock *caller_fl, struct file_lock *sys_fl)
{
	/* POSIX locks owned by the same process do not conflict with
	 * each other.
	 */
	if (!FUNC0(sys_fl) || FUNC3(caller_fl, sys_fl))
		return (0);

	/* Check whether they overlap */
	if (!FUNC2(caller_fl, sys_fl))
		return 0;

	return (FUNC1(caller_fl, sys_fl));
}